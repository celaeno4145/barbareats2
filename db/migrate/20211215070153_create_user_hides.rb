class CreateUserHides < ActiveRecord::Migration[6.1]
  def change
    create_table :user_hides do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
