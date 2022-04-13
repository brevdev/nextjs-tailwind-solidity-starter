
#!/bin/bash

set -euo pipefail

####################################################################################
##### Specify software and dependencies that are required for this project     #####
#####                                                                          #####
##### Note:                                                                    #####
##### The working directory is /home/brev/<PROJECT_FOLDER_NAME>. Execution of  #####
##### this file happens at this level.                                         #####
####################################################################################

sudo apt update

##### Yarn #####
(echo ""; echo "##### Yarn #####"; echo "";)
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install -y yarn

#### Node v14.x + npm #####
(echo ""; echo "##### Node v14.x + npm #####"; echo "";)
sudo apt install ca-certificates
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# #### Tailwind #####
# (echo ""; echo "##### Tailwind #####"; echo "";)
# npm install -D tailwindcss postcss autoprefixer

#### GraphQL #####
(echo ""; echo "##### GraphQL #####"; echo "";)
npm install @apollo/client graphql
sudo apt-get install libsecret-1-dev -y
sudo npm install -g @graphprotocol/graph-cli

#### Solidity & Tooling #####
(echo ""; echo "##### Solidity #####"; echo "";)
sudo npm install -g solc

(echo ""; echo "##### Ethers.js #####"; echo "";)
npm install --save ethers

#### Hardhat #####
(echo ""; echo "##### Hardhat #####"; echo "";)
npm install --save-dev hardhat
# https://hardhat.org/tutorial/creating-a-new-hardhat-project.html
