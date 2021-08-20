defmodule Tweeter.Tweet do
  def send(str) do
    ExTwitter.configure(:process, [
      consumer_key: System.get_env("TWITTER_PLURALSIGHT_API_KEY"),
      consumer_secret: System.get_env("TWITTER_PLURALSIGHT_API_SECRET_KEY"),
      access_token: System.get_env("TWITTER_PLURALSIGHT_ACCESS_TOKEN"),
      access_token_secret: System.get_env("TWITTER_PLURALSIGHT_ACCESS_TOKEN_SECRET"),
    ])

    ExTwitter.update(str)
  end
end
