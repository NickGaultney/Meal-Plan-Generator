class CreateComponents < ActiveRecord::Migration[7.0]
  def change
    create_table :components do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :ingredients, null: false, foreign_key: true
      t.decimal :quantity
      t.string :unit

      t.timestamps
    end
  end
end
