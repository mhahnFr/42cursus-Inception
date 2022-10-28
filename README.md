# Welcome to 42cursus-Inception!
This repository contains a project of the [42 school]. The task is to create a
simple web server using [Docker] containers.

The operating system inside the [Docker] containers should be either [Debian buster]
or [Alpine Linux].  
I have choosen [Alpine Linux] for my solutions.

## The services
The mandatory part consists of three services, each in its own container:
- [NGINX]
- [Wordpress] and `php-fpm`
- [MariaDB]

Additionally, two volumes:
- One for the wordpress data
- and one for the database.

As a bonus, I set up the [Raven MUD] using another volume for the necessary `mudlib`.

### Approach

### Final notes
This repository will not be developed any further.

© Copyright 2022 [mhahnFr](https://www.github.com/mhahnFr)
