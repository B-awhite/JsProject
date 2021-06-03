class CreateBeaches < ActiveRecord::Migration[6.1]
  def change
    create_table :beaches do |t|
      t.string :name
      t.string :country 

      t.timestamps
    end
  end
end
