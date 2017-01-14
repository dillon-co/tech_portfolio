class CreateServiceRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :service_requests do |t|
      t.belongs_to :client, foreign_key: true
      t.string :title
      t.string :description
      t.integer :project_type
      t.integer :project_status

      t.timestamps
    end
  end
end
