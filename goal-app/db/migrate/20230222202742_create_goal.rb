class CreateGoal < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :details
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
