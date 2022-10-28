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
#### [MariaDB]
In the beginning, I set up the container for [MariaDB]. It should be accessible inside
of the [Docker] network on port `3306`.

#### [Wordpress] and `php-fpm`
Next, I settled up wordpress and the [PHP] CGI handler. It should be accessible inside
of the [Docker] network on port `9000`.

#### [NGINX]
With the CGI handler and the database settled up, I added the web server. It should accept
only encrypted connections via [TLS] in version `1.2` or `1.3`. It should be accessible
from anywhere on port `443`.

#### [Raven MUD]
As a additional bonus, I set up the [Raven MUD]. The necessary `mudlib` is mounted as additional
volume.

### Final notes
This repository will not be developed any further.

© Copyright 2022 [mhahnFr]

[42 school]: https://www.42heilbronn.de/learncoderepeat
[Docker]: https://www.docker.com
[Debian buster]: https://www.debian.org/releases/buster/
[Alpine Linux]: https://www.alpinelinux.org
[NGINX]: https://www.nginx.com
[Wordpress]: https://wordpress.org
[MariaDB]: https://mariadb.com
[Raven MUD]: https://www.github.com/nijakow/raven
[TLS]: https://en.wikipedia.org/wiki/Transport_Layer_Security
[PHP]: https://www.php.net
[mhahnFr]: https://www.github.com/mhahnFr
