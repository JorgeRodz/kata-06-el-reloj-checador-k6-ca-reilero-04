![Rubycritic Score](badges/rubycritic_badged_score.svg)
![BrightCoders Logo](img/logo-bc.png)

# Reloj Checador App

![cover](img/cover.jpg)

## Pre-requisitos

Antes de iniciar debes instalar las siguientes herramientas, evaluar tu código e identificar posibles mejoras.

- [Instalar y utilizar Rubocop](https://brightcoder.gitbook.io/handbook/recursos/ruby-on-rails/rubocop)
- [Instalar y utilizar Rubycritic](https://brightcoder.gitbook.io/handbook/recursos/ruby-on-rails/rubycritic)
- [Instalar y utilizar SandiMeter](https://github.com/makaroni4/sandi_meter)

## Requerimientos funcionales

Foo Corp needs a system to control their employees attendance to their offices, they need full visibility of who went to work at what time and when they left. They need a webpage that will be opened in a tablet at the lobby of each branch, where the employee can go in and specify their private number and the system will record internally the time they checked in and the time they checked out.

The attendance web app must meet the following reuqirements:

- [ ] __Milestone__ Project setup

- Admin
  - [ ] __Milestone__ Admin portal protected with basic auth
  - [ ] __Milestone__ Manage employees (CRUD operations)
    - Deactivate employees instead of deleting them
    - Employee: email, name and position, employee #, private number
  - [ ] __Milestone__ Manage Company branches (CRUD operations)
    - Store: name, address
  - Reports
    - [ ] __Milestone__ Attendance by day
    - [ ] __Milestone__ Average time employees checked in/out by month
    - [ ] __Milestone__ Absence report by month
- Frontend
  - [ ] __Milestone__ Employee registration page
    - Private number input screen
    - Feedback to employee on successful/failed registration

## Requerimientos no-funcionales
- Calidad
  - Utilizar estilo de código definido por la comunidad (apoyarse en Rubocop)
  - Pruebas unitarias
  - Puntuación en Rubycritic: por lo menos 90 en la carpeta de la App y por lo menos 65 en la carpeta de pruebas
  - Utilizar SandiMeter para analizar el código y utilizar el resultado para hacer mejoras
  - Presentación correcta en las versiones más recientes de los principales navegadores: Edge, Chrome, Safari y Firefox
- Deployment
  - Configuración de un servidor web (heroku o similar) para el deployment automático de actualizaciones de la app
  - [Configuración de un servidor de integración continua como Travis CI o Circle CI](https://circleci.com/features/ruby/)
- Frontend
  - CSS: libertad para utilizar cuaquier framework o librería, preferentemente SASS
    - Por ejemplo puedes utilizar Bootsrap junto con [bootstrap_form](https://github.com/bootstrap-ruby/bootstrap_form) para tus formularios

## Tecnologías
- Ruby on Rails en el backend
- PostgreSQL como base de datos principal
- CSS: libertad para utilizar cuaquier framework o librería, preferentemente SASS
  - Por ejemplo puedes utilizar Bootsrap y junto con [bootstrap_form](https://github.com/bootstrap-ruby/bootstrap_form) para tus formularios
- Javascript: libertad para utilizar cualquier framework o librería, preferentemente sin jQuery
- Framework para pruebas [Rspec](https://rspec.info/) ó [Minitest](https://github.com/seattlerb/minitest)

## Entregable
- Código fuente en Github
  - Debe incluir README con información sobre como configurar el proyecto
  - Los commits de Git deben ser significativos
- Demo de la App correndo en heroku o similar
- Libertad para utilizar cualquier diseño, imágenes, etc, que considere necesarios y apropiados

## Setup
### Configuracion en local
  1.- Clonar el repositorio y hacer un `bundle install` para instalar las gemas necesarias, en algunos casos es necesario instalar webpacker usando yarn
  2.- Crear el archivo config/database.yml para crear nuestras bases de datos en local, preferentemente usando Postgresql
  3.- Una vez configurado el archivo anterior inicializar las bases de datos con el comando `rails db:setup`
  4.- Correr el comando de `rails server` para ver la app corriendo en local

### App corriendo fly.io
[App corriendo en fly.io](https://kata06-reloj-checador.fly.dev/)

## Enlaces
[Encuentra aquí una lista completa de recursos de ayuda](https://brightcoder.gitbook.io/handbook/ruby-on-rails)
