class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :book_id
      t.string :image_file_name
      t.integer :page_number

      t.timestamps null: false
    end
  end
end
