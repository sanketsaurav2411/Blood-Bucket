# BLOOD BUCKET &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[![](https://img.shields.io/badge/database-MySQL-blue.svg)](https://www.python.org/downloads/) [![](https://img.shields.io/badge/framework-Django-darkgreen.svg)](https://www.djangoproject.com/download/) 

Blood banks collect, store and provide collected blood to the patients who are in need of blood. The idea is to save time, which was done manually. It will aloow admin to operate, recover and analyze information concerned with the administrative and inventory management within a blood bank. And makes it easy for donor to donate blood, and patient to request blood.

## Features
- User Databases
- Patient, Donor Login & Sign up
- Patient, Donor details
- Finding blood group easily
- Take donation appointment easily
- Admin Login & Sign up
- Manage users easily

## Tools Used
- MySQL Databases
- Django framework
- VSCode

## How to run this project

### Setup database
- Install [MySQL](https://dev.mysql.com/downloads/installer/)
- Now, run MySQL cmd line client.
- Create database and tables as mentioned in "bb_ms.sql".
### Get required files
- Install Python (Dont forget to tick Add to Path while installing Python)
- Clone this project
- Open project directory in terminal and run following commands :
```sh
py -m pip install -r requirements. txt
```
### Connect database to the project
- Goto settings .py in bb_ms directory, and make these changes:
```sh
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': '<your_databse_name>',
        'USER': '<your_user_name>',
        'PASSWORD': '<your_databse_password>',
        'HOST': 'localhost',
        'PORT': '3306'
    }
}
```
```sh
py manage.py makemigrations
py manage.py migrate
```
### Add Admin
- Add admin credentials using following command:
```sh
py manage.py createsuperuser
```

### Run program
```sh
py manage.py runserver
```
- Now enter following URL in Your browser
```sh
http://127.0.0.1:8000/
```

# Collaborators
  | |  |  |
  | ------------- | ------------- | ------------- |
  | Sanket Saurav |[GitHub](https://github.com/sanketsaurav2411) | [LinkedIn](https://www.linkedin.com/in/sanket-saurav-19621a17a/) | 
  | Guna Sekhar | [Github](https://github.com/GunaSekar02) | [LinkedIn](https://www.linkedin.com/in/s-guna-sekhar-babu-b910271bb)
