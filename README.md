# exim4 Docker image

Simple exim4 SMTP server for development purposes.


## build 

```shell
docker build -t angelaschule/exim4 .
```


## run 

```bash
docker run --name mail -ti -p 25:25 angelaschule/exim4
```

## run as demon

```bash
docker run --name mail -ti -d -p 25:25 angelaschule/exim4
```

You can now access and send emails on `localhost:25`.


## Install the mail command

Install the mail command

```shell
apt-get install mailutils 
```

## Test

```shell
docker exec -it mail bash
```

```shell
echo "This is the message body" | mail -s "This is the subject" mail@example.com
```

## Note

This is for development purposes only. Get a SMTP server up and running in no
time at all.
