class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :demo
      t.string :image
      t.string :github
      t.string :discription

      t.timestamps
    end
  end
end
