## 1. Git clone this repository

```
git clone https://github.com/lsjjong8/ShoppingMall01.git
```

## 2. Install Java SE Development Kit 11

Java SE 11.0.6 (LTS; Long Term Support) is the latest release for the Java SE 11 Platform

Download link : https://www.oracle.com/java/technologies/javase-jdk11-downloads.html

## 3. Set Java Build Path
```
Set jar files from build path 

path : ~/ShoppingMall01/WebContent/WEB-INF/lib

commons-collections-3.2.1.jar, commons-dbcp-1.2.2, commons-pool-1.4... etc.
```

## 4. Set server yourself
```
Set your server (ex: apache 8.5, java SE 11)
```
## 5. Set file (context.xml, web.xml)

Set your DB portnumber, username, password for connection
```
<Resource name="jdbc/OracleDB" 
         auth="Container"
         type="javax.sql.DataSource" 
         username="" 
         password=""
         driverClassName="oracle.jdbc.driver.OracleDriver"
         factory="org.apache.tomcat.dbcp.dbcp2.BasicDataSourceFactory"
         url="jdbc:oracle:thin:@localhost:1521:xe"
         maxActive="500" 
         maxIdle="100"/> 
```


## 6. excute CreateBoard.sql

```
create table board1 ~ 4

insert into board1 ~ 4

commit;
```

## 7. Run index.html


If you preapred, run index.html
