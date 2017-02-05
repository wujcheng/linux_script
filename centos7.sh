#basic
yum update -y
yum install -y vim
yum install -y net-tools
yum install -y curl
LANG="en_US.utf8"


# docker
if ! rpm -qa | grep docker-engine; then
    wget https://yum.dockerproject.org/repo/main/centos/7/Packages/docker-engine-selinux-1.9.1-1.el7.centos.noarch.rpm
    wget https://yum.dockerproject.org/repo/main/centos/7/Packages/docker-engine-1.9.1-1.el7.centos.x86_64.rpm
    yum -y install docker-engine-selinux-1.9.1-1.el7.centos.noarch.rpm
    yum -y install docker-engine-1.9.1-1.el7.centos.x86_64.rpm
    rm -rf docker-engine-selinux-1.9.1-1.el7.centos.noarch.rpm
    rm -rf docker-engine-1.9.1-1.el7.centos.x86_64.rpm
fi
service docker start


## ~/.vimrc
curl https://raw.githubusercontent.com/yqsy/linux_script/master/.vimrc | tee ~/.vimrc

