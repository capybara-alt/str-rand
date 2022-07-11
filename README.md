# String Random
## Setup
+ Docker
```
~$ docker-compose up --build -d
```
+ Local
```
~$ plack bin/raisin.pl
```
# API
## Get random string from regular expression
#### URL : ```/api/v1/strrand```  
#### Method : ```GET```
#### Query Parameter : ```p=[string]``` regexp
### Success Response
#### Code : ```200 OK```
#### Content Example
```
{
    result: AA1
}
```