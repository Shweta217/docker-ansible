# docker-ansible
1) docker build -t ansible .
2) docker-compose up
3) docker ps -a from different terminal
4) docker exec -it container_id sh //for both container id do this and got to /usr/local/bin it will have jenkins and ansible both
   // in jenkins container id, ansible --version doesnt work but whereis ansible works. But in ansible container it ansible -version works
   // both conatiner network are linked and are pinagble from both conatiner and data volume is also shared for both among each other

        
