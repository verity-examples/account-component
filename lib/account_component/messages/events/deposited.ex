defmodule AccountComponent.Messages.Events.Deposited do
  use Verity.Messaging.Message

  attribute(:deposit_id, String.t())
  attribute(:account_id, String.t())
  attribute(:amount, float())
  attribute(:time, String.t())
  attribute(:processed_time, String.t())
  attribute(:sequence, integer())
end
