defmodule AccountComponent.Messages.Events.Deposited do
  use Verity.Messaging.Message

  attribute :account_id, :string
  attribute :amount, :number
  attribute :time, :string

  def new do
    %{account_id: nil, amount: nil, time: nil}
  end
end
