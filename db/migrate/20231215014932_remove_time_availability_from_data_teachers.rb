class RemoveTimeAvailabilityFromDataTeachers < ActiveRecord::Migration[7.1]
  def change
    remove_column :data_teachers, :time_availability, :integer
  end
end
