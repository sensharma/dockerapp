From Ruddra's blog

First: Django, gunicorn (app server), Nginx (web-server, load balancer & reverse proxy), Postgresql

* http://ruddra.com/2016/08/14/docker-django-nginx-postgres/

Comments on First above:

* Remember that the mydjango folder isn't there to start with. Gets created with the make appcreate command
* Silly way to "put a django project" in the folder as the blog says. That would require a local installation of django, which is exactly what containerisation is meant to avoid!! Do it with the Makefile appcreate command.

Second: Serving static files using Nginx

* http://ruddra.com/2016/11/02/serve-static-files-by-nginx-from-django-using-docker/ 

Third: Use Celery in Django (Redis as message broker)

* http://ruddra.com/2016/11/14/docker-do-stuff-using-celery-using-redis-as-broker/