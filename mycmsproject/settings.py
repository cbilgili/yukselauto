# -*- coding: utf-8 -*-
import os
import sys
gettext = lambda s: s

PROJECT_DIR = os.path.abspath(os.path.dirname(__file__))
sys.path.insert(0, os.path.join(PROJECT_DIR))
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.append(os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))
sys.path.append(os.path.dirname((os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))))
DEBUG = True
TEMPLATE_DEBUG = DEBUG

ADMINS = (
    # ('Your Name', 'your_email@domain.com'),
)

MANAGERS = ADMINS

LANGUAGES = (
    ('en', gettext('English')),
    ('tr', gettext('Turkish')),
    ('de', gettext('German')),
    )

DEFAULT_LANGUAGE = 1

DATABASES = {
        "default": {
            # Add "postgresql_psycopg2", "mysql", "sqlite3" or "oracle".
            "ENGINE": "django.db.backends.mysql",
            # DB name or path to database file if using sqlite3.
            "NAME": "yukseldjango",
            # Not used with sqlite3.
            "USER": "root",
            # Not used with sqlite3.
            "PASSWORD": "1q2w3e",
            # Set to empty string for localhost. Not used with sqlite3.
            "HOST": "/Applications/MAMP/tmp/mysql/mysql.sock",
            # Set to empty string for default. Not used with sqlite3.
            "PORT": "",
        }
}

# Local time zone for this installation. Choices can be found here:
# http://en.wikipedia.org/wiki/List_of_tz_zones_by_name
# although not all choices may be available on all operating systems.
# On Unix systems, a value of None will cause Django to use the same
# timezone as the operating system.
# If running in a Windows environment this must be set to the same as your
# system time zone.
TIME_ZONE = 'America/Chicago'

# Language code for this installation. All choices can be found here:
# http://www.i18nguy.com/unicode/language-identifiers.html
LANGUAGE_CODE = 'en'

SITE_ID = 1

# If you set this to False, Django will make some optimizations so as not
# to load the internationalization machinery.
USE_I18N = True

# If you set this to False, Django will not format dates, numbers and
# calendars according to the current locale
USE_L10N = True

# Absolute filesystem path to the directory that will hold user-uploaded files.
# Example: "/home/media/media.lawrence.com/"
MEDIA_ROOT = os.path.join(PROJECT_DIR, 'media')

STATIC_ROOT = os.path.join(PROJECT_DIR, 'static')

# URL that handles the media served from MEDIA_ROOT. Make sure to use a
# trailing slash if there is a path component (optional in other cases).
# Examples: "http://media.lawrence.com", "http://example.com/media/"
MEDIA_URL = '/media/'

STATIC_URL = '/static/'

# URL prefix for admin media -- CSS, JavaScript and images. Make sure to use a
# trailing slash.
# Examples: "http://foo.com/media/", "/media/".
ADMIN_MEDIA_PREFIX = '/static/admin/'

# Make this unique, and don't share it with anybody.
SECRET_KEY = '0r6%7gip5tmez*vygfv+u14h@4lbt^8e2^26o#5_f_#b7%cm)u'

# List of callables that know how to import templates from various sources.
TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.Loader',
    'django.template.loaders.app_directories.Loader',
)

MIDDLEWARE_CLASSES = (
    'django.middleware.common.CommonMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'cms.middleware.multilingual.MultilingualURLMiddleware',
    'cms.middleware.page.CurrentPageMiddleware',
    'cms.middleware.user.CurrentUserMiddleware',
    'cms.middleware.toolbar.ToolbarMiddleware',

)

TEMPLATE_CONTEXT_PROCESSORS = (
    'django.contrib.auth.context_processors.auth',
    'django.core.context_processors.i18n',
    'django.core.context_processors.request',
    'django.core.context_processors.media',
    'django.core.context_processors.static',
    'django.core.context_processors.request',
    'cms.context_processors.media',
    'sekizai.context_processors.sekizai',
)

CMS_TEMPLATES = (
    ('content_main.html', 'Content Page'),
    ('content_home.html', 'Home Page'),
    ('content_product.html', 'Product Page'),
)

CMS_LANGUAGES = (
    ('en', gettext('English')),
    ('tr', gettext('Turkish')),
    ('de', gettext('German')),
)

CMS_FRONTEND_LANGUAGES = ("en", "tr", "de")

CMS_SEO_FIELDS = True

ROOT_URLCONF = 'urls'

TEMPLATE_DIRS = (
    os.path.join(PROJECT_DIR, 'templates'),
    os.path.join(PROJECT_DIR, 'products', 'templates'),
)

INSTALLED_APPS = (
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.sites',
    'django.contrib.messages',
    'django.contrib.admin',
    'django.contrib.staticfiles',

    'products',
    'guest',




    'cms',
    'menus',
    'mptt',
    'south',
    'rosetta',
    #'cmsplugin_yandexmap',
    'tinymce',


    'cms.plugins.text',
    'cms.plugins.picture',
    'cms.plugins.link',
    'cms.plugins.file',
    'cms.plugins.snippet',
    'cms.plugins.googlemap',
    'sekizai',
    'modeltranslation',
    'selectable',
    #'djangojs',
    'form_designer',
    'form_designer.contrib.cms_plugins.form_designer_form',
)

MODELTRANSLATION_DEFAULT_LANGUAGE = 'tr'
