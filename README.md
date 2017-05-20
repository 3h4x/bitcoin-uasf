# bitcoin-uasf
## Running

Version bitcoin-0.14.1-bip148_segwit0.3

If you want to use docker hub just run  
`docker run -it 3h4x/bitcoin-uasf`


If you want to build it yourself  
`docker build -t bitcoin-uasf .`  
`docker run -d -v $PWD/data:/home/uasf/.bitcoin/blocks bitcoin-uasf`
