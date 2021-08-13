class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :times
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
