# Set the base image
FROM ckulka/awscli

# File Author / Maintainer
MAINTAINER Cyrill Kulka


## BEGIN INSTALLATION

# Install ZSH & nano
RUN apt-get update && apt-get install -y zsh nano &&\
	bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &&\
	sed -i 's/git/aws/g' ~/.zshrc


## CONFIGURE IMAGE

CMD ["zsh"]
