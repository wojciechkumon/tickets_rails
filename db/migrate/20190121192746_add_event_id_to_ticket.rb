class AddEventIdToTicket < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :event, foreign_key: true
  end
end
