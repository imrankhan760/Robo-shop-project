echo -e "\e[33m copy mongodb repo file \e[0m"
cp mongodb.repo /etc/yum.repos.d/mongo.repo &>>/tmp/roboshop.log

echo -e "\e[33m install mongodb \e[0m"
yum install mongodb-org -y  &>>/tmp/roboshop.log

echo -e "\e[33m start mongodb \e[0m"
systemctl enable mongod  &>>/tmp/roboshop.log
systemctl start mongod  &>>/tmp/roboshop.log


