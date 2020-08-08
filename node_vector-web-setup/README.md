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

---

You can host your own instance in Heroku Docker Registry. Just pull neurral/vws and docker tag to your Heroku app.

```
$ docker pull neurral/vws
$ docker tag neurral/vws registry.heroku.com/YOUR_HEROKU_APP/web
$ docker push registry.heroku.com/YOUR_HEROKU_APP/web
```

You may need to a release afterwards to start up: https://devcenter.heroku.com/articles/container-registry-and-runtime#releasing-an-image

**Demo:** [https://neurral-vws.herokuapp.com](https://neurral-vws.herokuapp.com/)
