## 1. Git clone this repository

```
git clone https://github.com/lsjjong8/ShoppingMall01.git
```

## 2. Install Java SE Development Kit 11

Java SE 11.0.6 (LTS; Long Term Support) is the latest release for the Java SE 11 Platform

Download link : https://www.oracle.com/java/technologies/javase-jdk11-downloads.html

## 3. Set Java Build Path
```
Set jar file from build path (/ShoppingMall01/WebContent/WEB-INF/lib) 
```

## Installation(DockerHub)
```
docker pull wnameless/oracle-xe-11g-r2
```
SSH server has been removed since 18.04, please use "docker exec"

## Quick Start

Run with 1521 port opened:
```
docker run -d -p 49161:1521 wnameless/oracle-xe-11g-r2
```

Run this, if you want the database to be connected remotely:
```
docker run -d -p 49161:1521 -e ORACLE_ALLOW_REMOTE=true wnameless/oracle-xe-11g-r2
```

For performance concern, you may want to disable the disk asynch IO:
```
docker run -d -p 49161:1521 -e ORACLE_DISABLE_ASYNCH_IO=true wnameless/oracle-xe-11g-r2
```

Enable XDB user with default password: xdb, run this:
```
docker run -d -p 49161:1521 -e ORACLE_ENABLE_XDB=true wnameless/oracle-xe-11g-r2
```

For APEX user:
```
docker run -d -p 49161:1521 -p 8080:8080 wnameless/oracle-xe-11g-r2
```

```
# Login http://localhost:8080/apex/apex_admin with following credential:
username: ADMIN
password: admin
```

For latest APEX(18.1) user, please pull wnameless/oracle-xe-11g-r2:18.04-apex first:
```
docker run -d -p 49161:1521 -p 8080:8080 wnameless/oracle-xe-11g:18.04-apex
```

```
# Login http://localhost:8080/apex/apex_admin with following credential:
username: ADMIN
password: Oracle_11g
```

By default, the password verification is disable(password never expired)<br/>
Connect database with following setting:
```
hostname: localhost
port: 49161
sid: xe
username: system
password: oracle
```

Password for SYS & SYSTEM
```
oracle
```

Support custom DB Initialization and running shell scripts
```
# Dockerfile
FROM wnameless/oracle-xe-11g-r2

ADD init.sql /docker-entrypoint-initdb.d/
ADD script.sh /docker-entrypoint-initdb.d/
```
Running order is alphabetically. 
