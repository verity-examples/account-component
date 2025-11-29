Code.eval_file("exercise_init.exs", "./exercises")

System.get_env("LOG_TAGS", "messaging")

alias AccountComponent.Messages
alias Verity.Messaging

deposited = Messages.Events.Deposited.new
deposited = Map.replace!(deposited, :account_id, "123")
deposited = Map.replace!(deposited, :amount, 11)
deposited = Map.replace!(deposited, :time, "2000-01-01T22:22:22.000Z")

stream_name = "account:command-123"

Messaging.Write.call(deposited, stream_name)

# TODO: Read stream and print each message using pp
