class TaskExclusion < ApplicationRecord
  belongs_to :exclusor, class_name: "Task"
  belongs_to :excluder, class_name: "Task"
end
