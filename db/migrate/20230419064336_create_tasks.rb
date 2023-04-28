class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :sarting_date
      t.date :ending_date
      t.boolean :all_day

      t.timestamps
    end
  end
end
