class CreateKingdoms < ActiveRecord::Migration[6.1]
  def change
    create_table :kingdoms do |t|
      t.string :name
      t.references :taxon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
