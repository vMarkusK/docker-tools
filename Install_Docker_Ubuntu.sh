## Install Docker on ubuntu 16.04
## Source https://docs.docker.com/engine/installation/linux/ubuntu/

# Update
sudo apt-get update

# Install extra packages
sudo apt-get install -y curl \
	linux-image-extra-$(uname -r) \
	linux-image-extra-virtual

# Set up repository
sudo apt-get install -y apt-transport-https \
	ca-certificates
	
curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -

sudo add-apt-repository \
	"deb https://apt.dockerproject.org/repo/ \
	ubuntu-$(lsb_release -cs) \
	main"

# Install Docker Engine	
sudo apt-get update

sudo apt-get install -y docker-engine