# Badi Coding Challenge - Backend (Ruby on Rails)
![Zombies at Badi](https://user-images.githubusercontent.com/4199523/33260366-e54216aa-d35f-11e7-8442-8d9e1cd67d88.jpg)

## The context
You are a scientist in a post-apocalyptic world. In your lab you have plenty of human tissues, yet not so many brains. For this reason, you decide to create zombies, which you then equip with armors and weapons. Why would you do that? Well, we cannot tell you. The only thing you need to know is that you are a crazy scientist playing on the edge of life and death.

## Instructions

* Fork this repo and clone your fork in your local machine. Alternatively, if you prefer to keep your challenge private, just download the code of this repo and send the final result to jobs@badiapp.com.
* The challenge is on! Implement the 6 steps described below;
* Create a pull request. 

## What we expect
* Build a performant, clean and well structured solution;
* Commit **early and often**. We want to be able to check your progress;
* Feel free to address the problem creatively according to your programming tastes (there are always multiple ways to achieve the same goal) and try to use elegant solutions. 

## The Challenge

Create a fully-working API that allows to perform the following operations:

1. Create Zombies. Each zombie can have weapons and armors;
2. Update a Zombie's attributes, including (but not limited to) weapons and armors;
4. Search Zombies according to their attributes, weapons and armors;
3. Destroy a Zombie;
5. Make your API public. Deploy it using the service of your choice (e.g. AWS, Heroku, Digital Ocean...);
6. Create a Readme file including a short explanation of your technical choices and (if you wish) ideas and suggestions.

Too easy? Great, we think so too!
That's why we encourage candidates to go the extra mile and impress us in any way they deem appropriate (as long as it is related to this challenge ;).

**Happy coding!**

### Recommendations
We **highly recommend you to use Docker**, this project is already setup to do so.
Just run `docker-compose up -d && docker-compose logs -f` and your api will be up & running with hot code reloading on `http://localhost:3000`.

In case you want to clean your environment, run again:

```
docker-compose down -f
docker-compose up -d --build
docker-compose logs -f
```

### About Badi
[Badi](https://www.crunchbase.com/organization/badi) is a startup based in Barcelona (Spain) which offers a two-sided marketplace for shared flats and roommates (mobile and web app). 
Our goal is making city living affordable for everyone by unlocking available rooms inside crowded urban areas. How? By offering the best marketplace that intelligently matches verified profiles without intermediaries. 
Do you want to join our tech team as a backend engineer? Accept our challenge and impress us :)
In case of questions or doubts, don't hesitate to reach out to us at jobs@badiapp.com.





 1990  mkdir mes10
 1991  cd mes10
 1992  ls
 1993  git clone https://github.com/Badiapp/coding-challenge-backend
 1994  ls
 1995  cd coding-challenge-backend/
 1996  ls
 1997  bundle install
 1998  gem install mysql2 -v '0.4.9'`
 1999  sudo apt-get update
 2000  sudo apt-get install mysql-server
 2001  apt-get install libmysqlclient-dev'
 2002  apt-get install libmysqlclient-dev
 2003  sudo apt-get install libmysqlclient-dev
 2004  systemctl status mysql.service
 2005  journalctl -xe | tail -50
 2006  sudo mysql_install_db --user=mysql --basedir=/usr/ --ldata=/var/lib/mysql/
 2007  yum install mysql-devel
 2008  sudo yum install mysql-devel
 2009  bundle install
 2010  rails s
 2011  pkill -9 mysqld
 2012  pgrep mysql or ps aux | grep mysql | grep -v grep
 2013  pgrep mysql
 2014  kill -9 12255
 2015  sudo kill -9 12255
 2016  sudo kill -9 12400
 2017  sudo kill -9 22021
 2018  chmod 777 /var/run/mysqld/mysqld.sock
 2019  sudo chmod 777 /var/run/mysqld/mysqld.sock
 2020  sudo service mysql start
 2021  rails s
 2022  rails db:seed
 2023  gem install mysql2
 2024  bundle install
 2025  mysql -u root -p
 2026  rails db:seed
 2027  rails db:create
 2028  rails db:seed
 2029  rails db:migrate


# Badi Coding Challenge - Backend (Ruby on Rails)
! [Zombies en Badi] (https://user-images.githubusercontent.com/4199523/33260366-e54216aa-d35f-11e7-8442-8d9e1cd67d88.jpg)

## El contexto
Eres un científico en un mundo post-apocalíptico. En tu laboratorio, tienes muchos tejidos humanos, pero no tantos cerebros. Por esta razón, decides crear zombies, que luego equipas con armaduras y armas. ¿Por qué harías eso? Bueno, no podemos decírtelo. Lo único que debes saber es que eres un científico loco que juega al borde de la vida y la muerte.

## Instrucciones

* Tenedor este repositorio y clonar el tenedor en su máquina local. Alternativamente, si prefiere mantener su desafío privado, simplemente descargue el código de este repositorio y envíe el resultado final a jobs@badiapp.com.
* ¡El desafío está en marcha! Implementa los 6 pasos que se describen a continuación;
* Crea una solicitud de extracción.

## Qué esperamos
* Desarrollar una solución perfecta, limpia y bien estructurada;
* Comprometerse ** temprano y a menudo **. Queremos poder verificar su progreso;
* Siéntase libre de abordar el problema de forma creativa de acuerdo con sus gustos de programación (siempre hay múltiples formas de lograr el mismo objetivo) y trate de usar soluciones elegantes.

## El reto

Cree una API que funcione completamente y que permita realizar las siguientes operaciones:

1. Crea zombis. Cada zombie puede tener armas y armaduras;
2. Actualizar los atributos de un Zombie, incluyendo (pero no limitado a) armas y armaduras;
4. Busca zombis según sus atributos, armas y armaduras;
3. Destruye un Zombie;
5. Haz que tu API sea pública. Impleméntelo utilizando el servicio de su elección (por ejemplo, AWS, Heroku, Digital Ocean ...);
6. Cree un archivo Léame que incluya una breve explicación de sus opciones técnicas y (si lo desea) ideas y sugerencias.

¿Demasiado fácil? Genial, ¡nosotros también lo pensamos!
Es por eso que alentamos a los candidatos a hacer un esfuerzo adicional e impresionarnos de la manera que consideren apropiada (siempre que esté relacionado con este desafío).

** Feliz codificación! **

### Recomendaciones
Recomendamos ** que use Docker **, este proyecto ya está configurado para hacerlo.
Simplemente ejecute `docker-compose up -d && docker-compose logs -f` y su API estará en funcionamiento con recarga de código caliente en` http: // localhost: 3000`.

En caso de que quiera limpiar su entorno, vuelva a ejecutar:

`` `
docker-componer abajo -f
docker-componer -d --build
docker-compose logs -f
`` `

### Acerca de Badi
[Badi] (https://www.crunchbase.com/organization/badi) es una startup con sede en Barcelona (España) que ofrece un mercado de dos caras para pisos compartidos y compañeros de habitación (aplicaciones móviles y web).
Nuestro objetivo es hacer que la vida en la ciudad sea asequible para todos desbloqueando habitaciones disponibles dentro de zonas urbanas abarrotadas. ¿Cómo? Ofreciendo el mejor mercado que combina inteligentemente los perfiles verificados sin intermediarios.
¿Desea unirse a nuestro equipo de tecnología como ingeniero de back-end? Acepta nuestro desafío y nos impresiona :)
En caso de preguntas o dudas, no dude en comunicarse con nosotros en jobs@badiapp.com.
