class AddDefaultPointValue < ActiveRecord::Migration
  def change
    change_column_default :flash_cards, :point_value, 5
  end
end
