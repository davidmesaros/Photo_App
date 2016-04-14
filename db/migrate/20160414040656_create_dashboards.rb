class CreateDashboards < ActiveRecord::Migration
  def change
    create_table :dashboards do |t|
      t.text :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
