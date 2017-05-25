#!/bin/bash
sed -i.bak -e "s/PASSWORD/$(uuidgen | sed 's/\-//g')/" -e "s/USERNAME/$(uuidgen | sed 's/-//g')/" /home/uasf/.bitcoin/bitcoin.conf
$BITCOIN_DIR/bin/bitcoind -listen -nodaemon -printtoconsole
