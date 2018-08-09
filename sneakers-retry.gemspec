Gem::Specification.new do |s|
  s.name        = 'sneakers-retry'
  s.version     = '0.1.7'
  s.date        = '2018-08-01'
  s.summary     = "A retry handler for Sneakers compatible with RabbitMQ move message"
  s.description = <<-EOF
A small modification of Sneaker's built-in Maxretry class
has the exact same logic, except you can use RabbitMQ's shovel plugin
to manually re-enqueue the messages which failed all of their retries
  EOF
  s.authors     = ["Eetay Natan"]
  s.extra_rdoc_files = ['README.md']
  s.email       = 'eetay2@gmail.com'
  s.files       = Dir.glob("lib/**/*")
  s.homepage    = 'https://github.com/eetay/sneakers-retry'
  s.license     = 'MIT'
  gem.executables   = ["my-rails-root"]
end