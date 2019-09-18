# HabitTracking-Server


### Getting Started


### Setup

### About Habit Tracking Data


##### Habits

* ALL HABITS - GET : /api/habits
* Particular Habit - GET : /api/habit/{id}
*


##### Users

* GET - /api/user/{id}/habits

####Dockerization
docker build -t spring-boot-docker . 
docker run -d -p 8080:8080 spring-boot-docker

###MySQL Container
docker run --name=mysql_habit_tracking --env="MYSQL_ROOT_PASSWORD=root" --env="MYSQL_PASSWORD=root" -d -p=3306:3306  mysql

docker exec -it mysql_habit_tracking mysql -uroot -proot

docker inspect mysql_habit_tracking

docker logs mysql_habit_tracking


###### Cleaning Container
docker system prune -a