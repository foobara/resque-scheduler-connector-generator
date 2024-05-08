require "foobara/resque_scheduler_connector"

resque_scheduler_connector = Foobara::CommandConnectors::ResqueSchedulerConnector.new

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
