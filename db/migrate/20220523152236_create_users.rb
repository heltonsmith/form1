class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.integer :edad 
      t.text :comment 
      t.string :nombre

      t.timestamps
    end
  end
end
