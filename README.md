# wordpress-quads
Containerized Wordpress wiki with nginx and mariadb for Quads

# Instructions
```bash
$ git clone https://github.com/grafuls/wordpress-quads.git
$ cd wordpress-quads
$ sh mariadb/build.sh
$ sh wordpress/build.sh
$ docker-compose up
```

Now you can access your Wordpress instance via broswer @localhost:80
