class CreateTaskExclusions < ActiveRecord::Migration[5.0]
  def change
    create_table :task_exclusions do |t|
      t.references :exclusor, class_name: "Task"
      t.references :excluder, class_name: "Task"

      t.timestamps
    end
  end
end
