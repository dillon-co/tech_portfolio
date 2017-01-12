class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.belongs_to :client, foreign_key: true

      t.string :title, null: false
      t.string :project_url
      t.text :description
      t.integer :project_type, null: false
      t.float :hours
      t.boolean :recurring, default: false

      t.timestamps
    end
  end
end
