#!/bin/bash          
  	workdir=("/home/api/logs/Lemon.Product.InternalApi/info" "/home/api/logs/Lemon.Product.ExternalApi/info" "/home/api/logs/Moon.Order.ExternalApi/info" "/home/api/logs/Moon.Order.ManageApi/info" "/home/api/logs/Epoint.OutSiteApi
/info" "/home/api/logs/Api.Pms.CachedApi/info" "/home/api/logs/YangGuangGongCai.OutSiteApi/info" "/home/api/logs/Moon.Order.InternalApi/info" "/home/api/logs/Esint.ExternalApi/info")
  	for wdir in ${workdir[@]}
 	 do
          	echo  filepath is $wdir
          	if [ $wdir =  ${workdir[0]} ] ;then
             		fileStr=`find  $wdir/*/* -type d`
             		echo files is $fileStr
         	 else
             		fileStr=`find  $wdir -type d`
             		echo filee is $fileStr
          	fi
         	for dir in $fileStr
          	do
                	echo file name is $dir         
                	find $dir -name '*log*' -and -mtime +5  -type f | xargs rm
               		 if [ $? -eq 0 ];then
                        	echo $date delete $dir success!             
               		 else
                        	echo $date delete $dir FAILD!            
               		 fi
          	done
  	done
echo 'finish'
