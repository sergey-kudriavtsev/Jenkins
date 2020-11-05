# Install Jenkins

1. Clone this repository to the host machine
```bash
git clone https://github.com/sergey-kudriavtsev/Jenkins.git
cd Jenkins
chown -R 1000:1000 jenkins-data
```

2. Run docker-compose inside repository

```bash
docker-compose up -d --build jenkins
```

3. Reset admin password

```url
http://<your_ip_address>:8048/login
```
use name=__"admin"__ pass=__"admin"__

4. Change admin password and Save configuration
```url
http://<your_ip_address>:8048/securityRealm/user/admin/configure
```


5. Confirm changes in local git 
```sh
git add .
git commit -m "Jenkins init pass"
```



# Delete Jenkins

1. Stop container
```bash
cd Jenkins
docker-compose stop jenkins
```
2. Remove container(volume,images)

```bash
cd Jenkins
docker-compose rm jenkins
docker volume rm jenkins_jenkins-docker-certs
docker image rm jenkins_jenkins
docker image rm jenkins:2.60.3
```

3. Remove directory
```bash
cd ..
cd -R ./Jenkins
```