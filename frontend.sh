echo -e "\e[33minstall nginx server\e[0m"
yum install nginx -y &>>/tmp/roboshop.log

echo -e "\e[32m removing old content\e[0m"

rm -rf /usr/share/nginx/html/* &>>/tmp/roboshop.log


echo -e "\e[34m downloading froent content\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip  &>>/tmp/roboshop.log


echo -e "\e[35m extract frontend content\e[0m" 
cd /usr/share/nginx/html &>>/tmp/roboshop.log
unzip /tmp/frontend.zip &>>/tmp/roboshop.log

#we need copy cofig file

echo -e "\e[36m start frntend contend \e[0m"

systemctl enable nginx  &>>/tmp/roboshop.log

systemctl restart nginx &>>/tmp/roboshop.log
