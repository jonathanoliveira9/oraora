# ORAORA オラオラ
```If you watched Jojo you've already heard ORARORA.```


## Requirements

The requirements to run this project include:
* ruby 2.7.2p137

## Installation

```bash
Install Redis

$ sudo apt install redis-server
$ sudo redis-server

Just clone the repository, install the bundle and run the migrations. After that, are you free to do anything.
$ git clone git@github.com:jonathanoliveira9/oraora.git
$ bundle
$ git db:create
$ git db:migrate
$ rails s

Start Redis
$ redis-server

To start sidekiq
$ bundle exec sidekiq -q mailers
