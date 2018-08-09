# Sneakers-Retry

A modified retry handler for RabbitMQ and [Sneakers](http://jondot.github.io/sneakers/)

A small modification of Sneaker's built-in [Maxretry class](https://github.com/jondot/sneakers/blob/master/lib/sneakers/handlers/maxretry.rb)
the replacement class is called ```SneakersRetry::Handlers::Maxretry2```
has the exact same logic, except that when a message fails all retries, this
handler stores the final failure (the message) in same format as the original message,
allowing you to use [RabbitMQ's shovel plugin](https://www.rabbitmq.com/shovel.html)
to manually re-enqueue the messages who failed all retries
Something that is sometimes needed in production systems

