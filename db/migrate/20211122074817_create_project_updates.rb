class CreateProjectUpdates < ActiveRecord::Migration[6.0]
  def change
    create_table :project_updates do |t|
      t.references :project, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :details

      t.timestamps
    end
  end
end
