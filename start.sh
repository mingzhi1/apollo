#!/bin/sh
read -p "是否跳过打包?"  skip
if [[  $skip == y ]] || [[  $skip == Y ]];then
		echo "已跳过打包"
	else
		echo "开始打包"
		sh scripts/build.sh
	fi
cd apollo-portal/
sh runDocker.sh
cd -
cd apollo-configservice/
sh runDocker.sh
cd -
cd apollo-adminservice/
sh runDocker.sh