class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :project
      t.references :student
      t.string     :grade
      t.date 	   :turned_in

      t.timestamps
    end
  end
end
