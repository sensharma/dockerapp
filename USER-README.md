# To use this sample:

- delete the mydjango app folder and the manage.py file
- change the name __mydjango__ in the Makefile _appcreate_ command to app name you want
- run make appcreate (BEFORE make apprun) (i.e., once the mydjango folder has been created in src)
- modify the created settings.py in mydjango as
    * add 'localhost' and 'web' to ALLOWED_HOSTS on in settings.py
    * change DATABASE settings to postgres settings as below

    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.postgresql',
            'NAME': 'postgres',
            'USER': 'postgres',
            'HOST': 'db',
            'PORT': 5432,
        }
    }
- run make appup to run the containers