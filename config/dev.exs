use Mix.Config

config :exsoda,
  domain: "localhost",
  host: "localhost",
  account: {:system, "SOCRATA_LOCAL_USER"},
  password: {:system, "LOCAL_PASS"},
  hackney_opts: [:insecure]
