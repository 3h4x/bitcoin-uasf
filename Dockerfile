FROM ubuntu:14.04

ENV BITCOIN_UASF_VERSION bitcoin-0.14.1-bip148_segwit0.3
ENV BITCOIN_DIR /bitcoin-0.14.1
RUN apt-get update && \
    apt-get install -qy wget uuid-runtime

RUN useradd uasf -m -d /home/uasf -s /bin/bash
RUN wget https://uasf.bitcoinreminder.com/$BITCOIN_UASF_VERSION-x86_64-linux-gnu.tar.gz
RUN tar xf $BITCOIN_UASF_VERSION-x86_64-linux-gnu.tar.gz

ADD bitcoin.conf /home/uasf/.bitcoin/bitcoin.conf

RUN chown uasf /home/uasf/.bitcoin -Rc

USER uasf
WORKDIR /home/uasf

RUN sed -i.bak -e "s/PASSWORD/$(uuidgen | sed 's/\-//g')/" -e "s/USERNAME/$(uuidgen | sed 's/-//g')/" /home/uasf/.bitcoin/bitcoin.conf

EXPOSE 8333

CMD $BITCOIN_DIR/bin/bitcoind && tail -F ~/.bitcoin/debug.log