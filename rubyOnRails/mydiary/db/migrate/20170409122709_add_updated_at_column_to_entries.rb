class AddUpdatedAtColumnToEntries < ActiveRecord::Migration[5.0]
  def self.up
    add_column :entries,:updated_at,:datetime
  end
  def self.down
    remove_column :entries,:updated_at
  end
  # def change
  # end
end
