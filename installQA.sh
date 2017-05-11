packageNum=`./getNum.php BEpackage-v | xargs`
sudo cp /home/ethan/Desktop/beqav-$packageNum.tar.gz /home/ethan/git/test/test
rm -r beqav-$packageNum.tar.gz

cd /home/ethan/git/test/test

sudo tar -zxvf beqav-$packageNum.tar.gz

