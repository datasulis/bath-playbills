class CreateBills < ActiveRecord::Migration
  def change
    
    create_table :bills do |t|
      t.date :day
      t.timestamps null: false
    end
    
    add_column :pages, :bill_id, :integer
    
  end
end
