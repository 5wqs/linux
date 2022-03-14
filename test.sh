#!D:\Git\bin\bash
#!/bin/bash
#Mysql终极部署
cat <<-EOF
+-------------+
#Mysql终极部署
+-------------+
a. 部署Mysql服务
q. 按q键退出程序
+-------------+
EOF
#编译安装Mysql
install_mysql()
{
    echo "开始安装mysql"
    echo "正在准备编译环境,wait a minute"
    yum -y install ncurses ncurses-devel openssl-devel bison gcc gcc-c++ make cmake &> /dev/null
    if [ $? -eq 0 ]
    then 
    echo "编译环境已准备好"
    else 
    echo "编译环境准备失败"
    fi  
    echo "正在下载源码包----请稍稍等一下"
    wget http://ftp.ntu.edu.tw/MySQL/Downloads/MySQL-5.7/mysql-boost-5.7.26.tar.gz
    groupadd mysql
    useradd -r -g mysql -s /bin/nologin Mysql
    tar xf mysql-boost-5.7.26.tar.gz
    cd mysql-5.7.26/
    echo "正在配置中，请再喝口水，小憩一下"
    
}

