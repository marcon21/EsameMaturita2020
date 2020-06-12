# EsameMaturita2020

### Marcon Daniel

---

## Requirements

- Python 3 & pip
- Postgres Or Docker + docker-compose

---

## Initial setup

Make sure to have git installed and excute this commands:

```sh
git clone https://github.com/marcon21/EsameMaturita2020.git
cd EsameMaturita2020
```

---

## Setting up the database

### Via Docker & docker-compose (raccomended)

#### Particular action needed for Docker on Windows

Make sure to be using Windows 10 build 2004+ and to have installed the latest version of Docker with 'Cointainer on WSL2' enabled.

#### Build adn run the cointainer

Run the commands:

```sh
# You will need to run this command only once
[sudo] docker-compose build
# Run this command every time you need to start the container
[sudo] docker-compose up
```

Now just wait the end of the initialization and your cointainer will be ready to go!

### Without Docker

Make sure to have already installed PostgreSQL 12 on your computer. Then run this commands:

```sh
[sudo -u postgres] psql -c 'create database l_nozze;'
[sudo -u postgres] psql -c 'grant all privileges on database l_nozze to username;'
[sudo -u postgres] psql -c < cat db_setup/sql/*
```

#### Important

#### Make sure to update the right access credentials in the file `./flask/.env`

---

## Setting up the python enviroment

### [OPTIONAL] Virtual enviroment

You may want to switch to a new python virtual enviroment via conda or venv.

### Install dependencies

First let's install all the required dependencies. For this let's use pip:

```sh
[sudo] pip[3] install -r flask/requirements.txt
```

---

## RUN THE PROJECT

First make sure the database is running, the do the following:

```sh
cd flask
python app.py
```

Now go to `http://localhost:5000` and make your own bridal registry!

---

## More Documentation

In the file `./INFO.md` you can find a more in depth explanation about the usefulness of some files.
