require "foobara/resque_scheduler_connector"

resque_scheduler_connector = Foobara::CommandConnectors::ResqueSchedulerConnector.new

RESQUE_SCHEDULER_CONNECTOR = resque_scheduler_connector

# Connecting commands gives an AsyncAt version of the command.
# resque_scheduler_connector.connect(SomeCommandOrDomainOrOrganization)

resque_scheduler_connector.cron(
  [
    #   Minute (0-59)
    #   | Hour (0-23)
    #   | | Day-of-Month (1-31)
    #   | | | Month (1-12)
    #   | | | | Day-of-Week (0-6)
    #   | | | | | Timezone
    #   | | | | | | Command, Inputs
    # ["* * * * *", SomeCommand]
  ]
)
