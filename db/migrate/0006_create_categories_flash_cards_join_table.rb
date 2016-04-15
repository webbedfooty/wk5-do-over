class CreateCategoriesFlashCardsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :categories, :flash_cards
  end
end
