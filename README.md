# bitcoin-uasf
## Running

Version bitcoin-0.14.1-bip148_segwit0.3

Running node is as simple as running  
`docker run -d -v $PWD/data:/home/uasf/.bitcoin/blocks 3h4x/bitcoin-uasf`

If you want to build it yourself  
`docker build -t bitcoin-uasf .`  
`docker run -d -v $PWD/data:/home/uasf/.bitcoin/blocks bitcoin-uasf`
