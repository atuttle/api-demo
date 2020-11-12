# API Demo

This repo contains everything you need to do a CFML live-coding Taffy API demo, assuming you have docker installed.

It includes a mysql database in a container, and [Lucee](https://www.lucee.org) in another container. The lucee instance mounts this repo's `www` folder as the web root; and Lucee is exposed on port 4040.

Run `make up` to install and start the docker containers, then run `make taffy` to install Taffy.

If you need a quick & dirty admin interface for the database, run `make adminer`. The root password is "guest". (Uses [adminer](https://github.com/TimWolla/docker-adminer))

If you want some sample blog data to get started with, run `make adminer`, login (the root password is "guest"), and import the file `initial-db.sql` from this repo. It will create a database named blog, with some blog-like tables and a small amount of sample data to get you started.
