This will install a clean WP instance

Also include support for Apple M1/M2 Chips and in general for ARM64v8

Requires Docker

The firts time just run ```./run.sh install```

Note: `install` option will delete current running instances and delete the `html` folder, please make sure before using it in already installed environments

And then open http://localhost and follow the Wordpress installation instructions

Write your code at `./html`

Extra Options

- To stop: ```./run.sh stop```

- To start: ```./run.sh start```
