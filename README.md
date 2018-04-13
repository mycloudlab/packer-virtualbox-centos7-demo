# packer-virtualbox-centos7-demo

This repository demonstrates how to use the packer to build a centos7 image.

**IMPORTANT: Virtualbox should be installed and working.**

## Building

First you need to install the [packer](https://www.packer.io/downloads.html), this can be done as directed for your operating system.

After installation use the command below:

```bash
git clone https://github.com/mycloudlab/packer-virtualbox-centos7-demo
cd packer-virtualbox-centos7-demo

#download packer if not downloaded, works only linux 64
wget https://releases.hashicorp.com/packer/1.2.2/packer_1.2.2_linux_amd64.zip -O packer.zip && unzip packer.zip

# build
./packer build --force centos-7-base.json
```

This will create an image in the output-iso-base directory in vmdk format, just import it into virtualbox and use it.

Password for root user is 'root'.