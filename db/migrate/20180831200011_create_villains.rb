class CreateVillains < ActiveRecord::Migration[5.2]
  def change
    create_table :villains do |t|
      t.string :name
      t.string :powers
      t.string :enemy

      t.timestamps
    end
  end
end
