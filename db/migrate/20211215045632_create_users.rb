class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :user_name
      t.text :user_id
      t.text :user_pass
      t.text :user_mail

      t.timestamps
    end
  end
end
