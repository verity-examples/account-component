defmodule AccountComponent.Handlers.Commands do
  use Verity.Messaging.Handle

  alias AccountComponent.Messages.Commands
  alias AccountComponent.Messages.Events

  import Verity.Messaging.StreamName

  # dependency :write, Messaging::Postgres::Write
  # dependency :clock, Clock::UTC

  def configure do
    # Messaging::Postgres::Write.configure(self)
    # Clock::UTC.configure(self)
  end

  # category :account

  defmodule Clock do
    def iso8601 do

    end
  end

  def handle(Commands.Deposit, deposit) do
    # TODO: consider
    clock = Clock
    # ---

    account_id = deposit.account_id

    time = clock.iso8601()

    deposited = Events.Deposited.follow(deposit)
    deposited = Map.replace!(deposited, :processed_time, time)

    stream_name = stream_name(account_id)

    write.(deposited, stream_name)
  end
end
