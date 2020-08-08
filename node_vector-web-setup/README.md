# neurral/vws

- Dockerized fork of [digital-dream-labs/vector-web-setup](digital-dream-labs/vector-web-setup)

## Description

This is an unofficial Heroku Registry-compatible dockerfile designed to be pushed to Heroku and mapped to the port that Heroku provides.

## Usage

<sub>\*replace \$PORT with your value.</sub>

### NPM Package

To avoid conflicting with npmjs.org/vector-web-setup, this is published as **neurral-vws** npm package, and the command when deployed is:

```
$ npm i -g neurral-vws
$ neurral-vws configure
$ neurral-vws serve --port YOURPORT
```

### Docker

```
$ docker pull neurral/vws
$ export PORT=8005 && docker run -p $PORT:$PORT -e PORT=$PORT -it neurral/vws:latest
```

You can then access your Vector Web Setup at localhost:8005.
