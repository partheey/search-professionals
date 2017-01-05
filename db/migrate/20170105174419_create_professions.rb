class CreateProfessions < ActiveRecord::Migration[5.0]
  def change
    create_table :professions do |t|
      t.string :name, null: false
      t.belongs_to :profession_type, foreign_key: true
      t.timestamps
    end
    add_index :professions, :name, unique: true
  end
end
