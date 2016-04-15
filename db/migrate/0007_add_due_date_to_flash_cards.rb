class AddDueDateToFlashCards < ActiveRecord::Migration
  def change
    add_column :flash_cards, :due_date, :date
  end
end
