class MakeInitialModels <ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name, null: false
      t.string :value, null: false
    end

    create_table :clubs do |t|
      t.string :name, null: false
      t.string :city, null: false
    end

    create_table :players do |t|
      t.string :name, null: false
      t.string :value, null: false
    end
  end
end
