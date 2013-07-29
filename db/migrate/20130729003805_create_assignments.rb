class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.belongs_to :project
      t.belongs_to :student
      t.string     :grade
      t.date 	   :turned_in

      t.timestamps
    end
  end
end
