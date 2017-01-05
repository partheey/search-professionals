class CreateWorkerProfessions < ActiveRecord::Migration[5.0]
  def change
    create_table :worker_professions do |t|
      t.integer :worker_id, foreign_key: true
      t.integer :profession_id, foreign_key: true
      t.timestamps
    end
  end
end
