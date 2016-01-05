class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :notes
      t.string :slug
      t.string :catalogue_url
      t.string :catalogue_id
      t.string :pdf
      t.date :start_date
      t.date :end_date
      t.integer :page_count

      t.timestamps null: false
    end
    
    add_index :books, :slug, unique: true
  end
end
