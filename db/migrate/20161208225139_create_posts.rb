class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.date :date
      t.string :sierraTitle
      t.string :sierraBody 
      t.string :kathyTitle
      t.string :kathyBody

      t.timestamps
    end
  end
end
