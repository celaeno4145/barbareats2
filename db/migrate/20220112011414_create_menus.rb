class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :menuname
      t.string :menuvalue
      t.text :menuexplain

      t.timestamps
    end
  end
end
