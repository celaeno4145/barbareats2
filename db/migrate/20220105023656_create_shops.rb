class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :break
      t.string :tell
      t.string :shopname
      t.string :shopadd

      t.timestamps
    end
  end
end
