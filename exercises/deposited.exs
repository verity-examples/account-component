System.get_env("LOG_TAGS", "messaging")

Code.eval_file("exercise_init.exs", "./exercises")

alias AccountComponent.Messages
alias Verity.Messaging
alias Verity.Identifier

account_id = Identifier.UUID.random()

deposited =
  Messages.Events.Deposited.new(
    account_id: account_id,
    amount: 11,
    time: "2000-01-01T11:11:11.000Z",
    processed_time: "2000-01-01T22:22:22.000Z"
  )

stream_name = "account:command-123"

# TODO
# Messaging.Postgres.Write.(deposited, stream_name)

# MessageStore.Postgres.Read.(stream_name, fn message_data ->
#   IO.inspect(message_data)
# end)
