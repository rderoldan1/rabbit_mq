rabbit_mq
=========

1. Install rabbit_mq

    $ brew install rabbitmq

2. Add environment var in bashrc

    $ vim .zshrc 
    # add in the last line
    export PATH=$PATH:/usr/local/sbin

3. Run rabbit_mq server

    $ rabbitmq-server

                RabbitMQ 3.3.5. Copyright (C) 2007-2014 GoPivotal, Inc.
    ##  ##      Licensed under the MPL.  See http://www.rabbitmq.com/
    ##  ##
    ##########  Logs: /usr/local/var/log/rabbitmq/rabbit@localhost.log
    ######  ##        /usr/local/var/log/rabbitmq/rabbit@localhost-sasl.log
    ##########
                Starting broker... completed with 10 plugins.

