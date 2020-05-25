class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories, id: false do |t|
      t.primary_key :cid
      t.string :name

      t.timestamps
    end
  end
end
