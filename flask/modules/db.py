import psycopg2
import embrace
import os
from dotenv import load_dotenv
from pathlib import Path

env_path = Path('../') / '.env'
load_dotenv(dotenv_path=env_path)

settings = {
    'user': os.environ.get('USERDB', 'admin'),
    'pwd': os.environ.get('PWDDB', '1234'),
    'url': os.environ.get('ULRDB', 'localhost'),
    'port': os.environ.get('PORTDB', '5435'),
    'db': os.environ.get('NAMEDB', 'l_nozze')
}

db = psycopg2.connect(
    'postgres://{}:{}@{}:{}/{}'.format(settings['user'], settings['pwd'], settings['url'], settings['port'], settings['db']))
queries = embrace.module('./queries')
