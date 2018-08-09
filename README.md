This Gem is a retry handler for retries for RabbitMQ and [Sneakers](http://jondot.github.io/sneakers/)
small modification on top of the built in [Sneaker's Maxretry class](https://github.com/jondot/sneakers/blob/master/lib/sneakers/handlers/maxretry.rb)
the replacement class is called ```SneakersRetry::Handlers::Maxretry2```
and it does exactly same logic, except that when all retries fail, it stores
the final failure (the message) in same format as the original message, which
allows you to use [RabbitMQ's shovel plugin](https://www.rabbitmq.com/shovel.html)
to manually re-enqueue the messages who failed all retries
Something that is needed in production systems
