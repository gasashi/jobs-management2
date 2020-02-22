class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :orderee
      t.string :serial_number
      t.date :deadline
      t.string :comment
      t.timestamps
    end
  end
end
