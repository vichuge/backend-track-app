class UpdateRecordTable < ActiveRecord::Migration[6.1]
  def change
    add_reference :records, :user, foreign_key: true
  end
end
