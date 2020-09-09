# exim Docker image

Simple [exim](https://www.exim.org/) SMTP server for development purposes.

- [exim Docker image](#exim-docker-image)
  - [Note](#note)
  - [Build](#build)
  - [Run](#run)
  - [Run as demon](#run-as-demon)
  - [Test](#test)
    - [Install the mail command](#install-the-mail-command)
    - [Send test email form the commandline](#send-test-email-form-the-commandline)
  - [Logging](#logging)

## Note

This is for development purposes only. Get a SMTP server up and running in no
time at all.

## Build 

```shell
docker build -t angelaschule/exim4 .
```

## Run 

```bash
docker run --name mail -ti -p 25:25 angelaschule/exim4
```

## Run as demon

```bash
docker run --name mail -ti -d -p 25:25 angelaschule/exim4
```
You can now access and send emails on `localhost:25`.

## Test

### Install the mail command

```shell
apt-get install mailutils 
```
### Send test email form the commandline

```shell
docker exec -it mail bash
```

```shell
echo "This is the message body" | mail -s "This is the subject" mail@example.com
```

## Logging

TODO: Made `/var/log/exim4/mainlog` appear in the `docker logs`.