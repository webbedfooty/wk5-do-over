class AddNullConstraintToPointValue < ActiveRecord::Migration
  def change
    change_column_null :flash_cards, :point_value, false
  end
end
