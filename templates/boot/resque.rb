require "foobara/resque_scheduler_connector"

redis_url = ENV.fetch("REDIS_URL", nil)

unless redis_url
  # :nocov:
  raise NoRedisUrlError, 'Must set ENV["REDIS_URL"] if trying to initialize ResqueSchedulerConnector with no arguments'
  # :nocov:
end

Resque.redis = Redis.new(url: redis_url)

resque_scheduler_connector = Foobara::CommandConnectors::ResqueSchedulerConnector.new

# resque_scheduler_connector.connect(SomeCommandOrDomainOrOrganization)

RESQUE_CONNECTOR = resque_scheduler_connector
