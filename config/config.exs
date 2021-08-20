use Mix.Config

config :pluralsight_tweet, Tweeter.Scheduler, jobs: [
  {"* * * *", fn ->
    Tweeter.FileReader.get_tweets(
      Path.join("#{:code.priv_dir(:pluralsight_tweet)}", "sample.txt")
    )
    |> Tweeter.TweetServer.tweet
  end}
]
