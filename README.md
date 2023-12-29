# workshop-py-performance
Databases comparative based on a Python project developed using Jupyter Notebook connected using the official libraries to IRIS, MySQL and Postgresql.

You can find more in-depth information in https://learning.intersystems.com.


# What do you need to install? 
* [Git](https://git-scm.com/downloads) 
* [Docker](https://www.docker.com/products/docker-desktop) (if you are using Windows, make sure you set your Docker installation to use "Linux containers").
* [Docker Compose](https://docs.docker.com/compose/install/)
* [Visual Studio Code](https://code.visualstudio.com/download) + [InterSystems ObjectScript VSCode Extension](https://marketplace.visualstudio.com/items?itemName=daimor.vscode-objectscript)

# Setup
Build the image we will use during the workshop:

```console
$ git clone https://github.com/intersystems-ib/workshop-py-performance
$ cd workshop-py-performance
$ docker-compose build
```

# Configuration

The main purpose of this example is to test the performance of different databases connected by Python libraries to a Jupyter Notebook project.

## **ATTENTION** Docker configuration

There is a known issue related to the permission request from Docker Desktop to access to the folders of the project, this permission has to be granted before to launch **docker-compose up -d**. To allow the file sharing in Docker Desktop you have to open settings option, select **Resources** and **File Sharing**, from that screen you have to include the path to the project, you can see here an example:
![alt text](/images/fileSharing.png)

If you don't share this folder previously PostgreSQL database won't be initialized and the project will fail.

## Test Production 
* Run the containers that we will use in the workshop:
```
docker-compose build

docker-compose up -d
```
Automatically an IRIS instance, a MySQL and a PostgreSQL databases will be deployed, a Jupyter Notebook is deployed under (http://localhost:8888) too.

You can check PostgreSQL and MySQL databases from Adminer 

## MySQL Adminer

* Open [Adminer](http://localhost:8081) using the following parameters:
  * Server: `mysql`
  * Username: `testuser`
  * Password: `testpassword`
  * Database: `test`

## PostgreSQL Adminer

* Open [Adminer](http://localhost:8081) using the following parameters:
  * Server: `posrgres`
  * Username: `testuser`
  * Password: `testpassword`
  * Database: `testuser`
* Select Schema `test`

## IRIS database

* Open the [Management Portal](http://localhost:52774/csp/sys/UtilHome.csp).
* Login using the default `superuser`/ `SYS` account.
* Open System Explorer --> SQL
* Select NAMESPACE USER and Schema `Test`

# Testing with Jupyter Notebook

This project is devolped in Python using Jupyter Notebook, you can access to it from [here](http://localhost:8888) and open PerformanceTests.ipnyb file.
![alt text](/images/jupyter.png)

You can test the project step by step or execute it at one time, feel free.