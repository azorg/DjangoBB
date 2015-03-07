# -*- coding: UTF-8 -*-

#from django.utils.translation import ugettext_lazy as _
#from django.utils.translation import ugettext as _

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.6/howto/deployment/checklist/

SITE_ID = 1
SITE_URL = 'http://example.com/'

# SECURITY WARNING: don't run with debug turned on in production!
#DEBUG = False
DEBUG = True

TEMPLATE_DEBUG = DEBUG

ALLOWED_HOSTS = []

# gango-console
# http(s)://site.com/admin/console/ - to access the web console
SECURE_CONSOLE = False  # True to allow https, False - http
CONSOLE_WHITELIST = [
  # List of IPs to be allowed - NB: All allowed by default
  "127.0.0.1"
]

ADMINS = (
    # ('Your Name', 'your_email@domain.com'),
)
MANAGERS = ADMINS

# Database
# https://docs.djangoproject.com/en/1.6/ref/settings/#databases
#
# SQLite:
from settings import PROJECT_ROOT
import os
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(PROJECT_ROOT, 'db.sqlt3'),
        'ATOMIC_REQUESTS': True, #!!! FIXME
    }
}

# PostgreSQL:
#DATABASES = {
#    'default': {
#        'ENGINE': 'django.db.backends.postgresql_psycopg2',
#        'NAME': 'mydatabase',
#        'USER': 'mydatabaseuser',
#        'PASSWORD': 'mypassword',
#        'HOST': '127.0.0.1',
#        'PORT': '5432',
#    }
#}


# Internationalization
# https://docs.djangoproject.com/en/1.6/topics/i18n/
LANGUAGE_CODE = 'en-EN'
#LANGUAGE_CODE = 'ru-RU'
USE_I18N = True
USE_L10N = True

LANGUAGES = (
    ('ca', 'Catalan'),
    ('cs', 'Czech'),
    ('de', 'German'),
    ('en', 'English'),
    ('es', 'Spanish'),
    ('fo', 'Faroese'),
    ('fr', 'France'),
    ('it', 'Italian'),
    ('lt', 'Lithuanian'),
    ('mn', 'Mongolian'),
    ('nl', 'Dutch'),
    ('pl', 'Polish'),
    ('ru', 'Russian'),
    ('uk_UA', 'Ukrainian'),
    ('vi', 'Vietnamese'),
    ('zh_CN', 'Chinese'),
)

# Local time zone for this installation. Choices can be found here:
# http://en.wikipedia.org/wiki/List_of_tz_zones_by_name
# although not all choices may be available on all operating systems.
# If running in a Windows environment this must be set to the same as your
# system time zone.
TIME_ZONE = 'UTC'
#TIME_ZONE = 'Europe/Moscow'
USE_TZ = True

# e-mail sender options
#EMAIL_BACKEND        = 'django.core.mail.backends.console.EmailBackend'
#EMAIL_BACKEND        = "mailer.backend.DbBackend"
#MAILER_EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
DEFAULT_FROM_EMAIL  = 'user@example.net'
EMAIL_HOST          = 'smtp.example.net'
EMAIL_PORT          = 587
EMAIL_HOST_USER     = 'user@example.net'
EMAIL_HOST_PASSWORD = 'My_SuPerSECRET-Passwd@2015'
EMAIL_USE_TLS       = True
EMAIL_USE_SSL       = False

# e-mail registration option
ACCOUNT_ACTIVATION_DAYS = 7

# DjangoBB settings
DJANGOBB_FORUM_BASE_TITLE ='DjangoBB'
DJANGOBB_FORUM_META_DESCRIPTION = ''
DJANGOBB_FORUM_META_KEYWORDS = 'djangobb forum'
DJANGOBB_TOPIC_PAGE_SIZE  = 10
DJANGOBB_TOPIC_PAGE_HEAD  = 3
DJANGOBB_TOPIC_PAGE_TAIL  = 5
DJANGOBB_FORUM_PAGE_SIZE  = 20
DJANGOBB_SEARCH_PAGE_SIZE = 20
DJANGOBB_USERS_PAGE_SIZE  = 20
DJANGOBB_AVATARS_UPLOAD_TO = 'djangobb_forum/avatars'
DJANGOBB_AVATAR_WIDTH  = 80 #60
DJANGOBB_AVATAR_HEIGHT = 80 #60
DJANGOBB_FORUM_LOGO_UPLOAD_TO = 'djangobb_forum/forum_logo'
DJANGOBB_FORUM_LOGO_WIDTH  = 20 #16
DJANGOBB_FORUM_LOGO_HEIGHT = 20 #16
DJANGOBB_SIGNATURE_MAX_LENGTH = 1024
DJANGOBB_SIGNATURE_MAX_LINES = 3
DJANGOBB_HEADER  = 'DjangoBB'
DJANGOBB_TAGLINE = 'Django based forum engine'
DJANGOBB_DEFAULT_MARKUP = 'bbcode'
DJANGOBB_NOFOLLOW_LINKS = True
DJANGOBB_NOTICE = ''
DJANGOBB_USER_ONLINE_TIMEOUT = 15 * 60
DJANGOBB_FORUM_EMAIL_DEBUG = False
DJANGOBB_USER_TO_USER_EMAIL = True
DJANGOBB_POST_USER_SEARCH = 1
DJANGOBB_NOTIFICATION_HANDLER = 'djangobb_forum.subscription.email_topic_subscribers'

# GRAVATAR Extension
DJANGOBB_GRAVATAR_SUPPORT = True
DJANGOBB_GRAVATAR_DEFAULT = 'identicon'

# LOFI Extension
DJANGOBB_LOFI_SUPPORT = True

# PM Extension
DJANGOBB_PM_SUPPORT = True

# AUTHORITY Extension
DJANGOBB_AUTHORITY_SUPPORT = True

# ATTACHMENT Extension
#DJANGOBB_ATTACHMENT_SUPPORT = True
#DJANGOBB_ATTACHMENT_UPLOAD_TO = 'djangobb_forum/attachments'
DJANGOBB_ATTACHMENT_SIZE_LIMIT = 4 * 1024 * 1024 # 4 Mb

# django-pagination default settings (DEPRECATED)
#PAGINATION_DEFAULT_PAGINATION = 10
PAGINATION_DEFAULT_WINDOW      = 5
PAGINATION_DEFAULT_MARGIN      = 3
#PAGINATION_DEFAULT_ORPHANS    = 0


