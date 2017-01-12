class Task < ApplicationRecord
	has_many :task_exclusions, :class_name => 'TaskExclusion', :foreign_key => 'exclusion_id'
	has_many :task_excluders, :class_name => 'TaskExclusion', :foreign_key => 'excluder_id'
	has_many :exclusions, through: :task_exclusions
	has_many :excluders, through: :task_excluders
end
