Code.eval_file("exercise_init.exs", "./exercises")

alias AccountComponent.Messages
alias Verity.Messaging

deposit = Messages.Commands.Deposit.new
deposit = Map.replace!(deposit, :account_id, "123")
deposit = Map.replace!(deposit, :amount, 11)
deposit = Map.replace!(deposit, :time, "2000-01-01T11:11:11.000Z")

command_stream_name = "account:command-123"

Messaging.Write.call(deposit, command_stream_name)

# TODO: Read stream and handle each command message
