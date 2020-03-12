class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.string :avatar_image
      t.string :role

      t.timestamps
    end
  end
end
