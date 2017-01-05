class CreateProfessionTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :profession_types do |t|
      t.string :title, null: false
      t.timestamps
    end
    add_index :profession_types, :title, unique: true
  end
end
