class AddPhoneToTickets < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :phone, :string
  end
end
