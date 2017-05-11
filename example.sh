input="/home/ethan/git/test/test/beqa/config"
packageNum=`./getPackageNum.php BEpackage-v | xargs`
cd /tmp/
mkdir beqav-$packageNum
while IFS= read -r a
do sudo cp -r $a /tmp/beqav-$packageNum
done < "$input"
tar -czvf beqav-$packageNum.tar.gz beqav-$packageNum

scp beqav-$packageNum.tar.gz kamran@192.168.43.104:/home/kamran/git/IT490/rabbitmqexample/rabbitmqtest

cd /tmp/
sudo rm -r beqav-$packageNum
sudo rm beqav-$packageNum.tar.gz

cd /home/ethan/git/test/test
./sendDeployR.php
