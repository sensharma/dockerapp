vsc2doc:
	ln -f -s /proc/`pgrep -nf "gunicorn"`/root/home/${USER}/miniconda3/envs/dockerenv

# to be used when creating the app for the first time
# will create it automatically within the WORKDIR in DOCKERFILE
appcreate:
	sudo docker-compose run web django-admin.py startproject mydjango .

# to be used when running app for the first time (after createapp from docker-compose)
# -d is in daemon mode (i.e. in background)
appup:
	docker-compose up -d

# to be used when running app subsequently (after the first time with launchapp)
# can only be used if the containers still exist, i.e., if stop rather than down was used before
# not my preference
# apprun:
	# docker-compose start

appdown:
	docker-compose down

# to stop running app (stops without removing containers, can be started again with start)
# appstop:
	# docker-compose stop

restartguni:
	sudo service gunicorn restart

restartnginx:
	sudo service nginx restart