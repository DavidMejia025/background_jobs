class CreateDelayTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :delay_tasks do |t|

      t.timestamps
    end
  end
end
