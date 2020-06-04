class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.integer :project_id
      t.string :heading
      t.string :content
      t.timestamps
    end
  end
end
