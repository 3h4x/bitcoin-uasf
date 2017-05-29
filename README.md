# bitcoin-uasf
## Running docker image

Version bitcoin-0.14.1-bip148_segwit0.3

Running node is as simple as running  
`docker run -d -v $PWD/data:/home/uasf/.bitcoin/blocks -p 8333:8333 3h4x/bitcoin-uasf`

If you want to build it yourself  
`docker build -t bitcoin-uasf .`  
`docker run -d -v $PWD/data:/home/uasf/.bitcoin/blocks -p 8333:8333 bitcoin-uasf`

## Cloudformation

[![Launch Bitcoin Full Node with UASF](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png)](https://console.aws.amazon.com/cloudformation/home#/stacks/new?stackName=bitcoin-uasf&templateURL=https://raw.githubusercontent.com/3h4x/bitcoin-uasf/master/uasf.yaml)
