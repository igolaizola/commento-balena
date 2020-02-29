# commento-balena

Deployment configuration to run a self-hosted version of [commento](https://commento.io/) on a device running [balena](https://www.balena.io/).

This project has been tested on a raspberry pi zero but should work with other devices.

## Deploy to a device running balena

Follow this guide to configure a device with balena: https://www.balena.io/docs/learn/getting-started/raspberry-pi/go/

Run these commands to deploy self-hosted commento on your device:

```
$ git clone git@github.com:igolaizola/commento-balena.git
$ git remote add balena <balena-username>@git.balena-cloud.com:<balena-username>/<balena-app-name>.git
$ git push balena master
```

## Configuration

### Public device url

Enable the `public device url` of your device and add it as a device environment variable on balena dashboard.
This will be the url to access your commento self-hosted app.

```
COMMENTO_ORIGIN=https://aaaabbbbccccdddd0000000000000000.balena-devices.com
```

### Emails

Add these values as application environment variables on balena dashboard to enable sending emails from commento.

```
COMMENTO_SMTP_HOST=smtp.gmail.com
COMMENTO_SMTP_PORT=587
COMMENTO_SMTP_USERNAME=my-sender-email@gmail.com
COMMENTO_SMTP_PASSWORD=my-password
COMMENTO_SMTP_FROM_ADDRESS=my-sender-email@gmail.com
```

### Disable new owners

As soon as you have registered your admin/s, immediately uncomment/set this to "true".

```
COMMENTO_FORBID_NEW_OWNERS=true
```

## Instruction set architecture

Postgres folder has multiple Dockerfiles for different values of `%%BALENA_ARCH%%`.

See: 
 - https://www.balena.io/docs/learn/develop/dockerfile/#dockerfile-templates
 - https://www.balena.io/docs/learn/develop/dockerfile/#multiple-dockerfiles