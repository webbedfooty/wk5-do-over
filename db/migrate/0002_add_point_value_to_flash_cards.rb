class AddPointValueToFlashCards < ActiveRecord::Migration
  def change
    add_column :flash_cards, :point_value, :integer
  end
end
