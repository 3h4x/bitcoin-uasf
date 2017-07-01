# Bitcoin UASF 0.3 0.14.2 BIP148 
# Full Node with Core User Activated Soft Fork
## Running docker image

Version bitcoin-0.14.2-bip148_segwit0.3
All images are automatically built on Docker Hub https://hub.docker.com/r/3h4x/bitcoin-uasf/

### Run docker and preserve data . 
Use docker volumes!  

`docker run -d -v /path/to/.bitcoin:/home/uasf/.bitcoin/ -p 8333:8333 3h4x/bitcoin-uasf`

### Simple run
`docker run -d -p 8333:8333 3h4x/bitcoin-uasf`

Important: This will not preserve data if the container will be killed or stopped. 

### If you want to build container yourself
`docker build -t bitcoin-uasf .`  
`docker run -d -v $PWD/data:/home/uasf/.bitcoin/blocks -p 8333:8333 bitcoin-uasf`

## Cloudformation

Cloudformation is AWS service to provision infrastructure.  
Before you lunch bitcoin node in cloud you should know that:  
- "Full nodes are only meaningful if you run them on hardware you exclusively control." - luke-jr
- There is possibilty of attacking the network with a <a href="https://en.wikipedia.org/wiki/Sybil_attack" target="_blank" title="Sybil Attack">Sybil attack</a>

[![Launch Bitcoin Full Node with UASF](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/images/cloudformation-launch-stack-button.png)](https://console.aws.amazon.com/cloudformation/home#/stacks/new?stackName=bitcoin-uasf&templateURL=https://s3.amazonaws.com/bitcoin-uasf/uasf.yaml)


