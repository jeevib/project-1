class CreateProject1s < ActiveRecord::Migration[5.2]
  def change
    create_table :project1s do |t|
      t.string :name
      t.text :description
    end
  end
end
