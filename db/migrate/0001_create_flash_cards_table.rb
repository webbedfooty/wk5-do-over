class CreateFlashCardsTable < ActiveRecord::Migration
  def change
    create_table :flash_cards do |t|
      t.text :question, null: false
      t.text :answer, null: false
    end
  end
end
