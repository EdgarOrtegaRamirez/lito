Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = "Lita"

  # The locale code for the language to use.
  # config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :info

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ["1", "2"]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :slack
  config.adapters.slack.token = ENV["SLACK_TOKEN"]
  config.robot.admins = ENV["SLACK_ADMINS"].split(",")

  ## Example: Set options for the chosen adapter.
  # config.adapter.username = "myname"
  # config.adapter.password = "secret"

  ## Example: Set options for the Redis connection.
  # config.redis.host = ENV["REDISTOGO_URL"]
  # config.redis.port = ENV["PORT"]
  config.http.port = ENV["PORT"]
  config.redis[:url] = ENV["REDISTOGO_URL"]

  config.handlers.keepalive.url = ENV["HEROKU_URL"]
  config.handlers.keepalive.minutes = 180
end
