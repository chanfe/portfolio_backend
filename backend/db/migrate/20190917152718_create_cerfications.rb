class CreateCerfications < ActiveRecord::Migration[5.2]
  def change
    create_table :cerfications do |t|
      t.string :name
      t.string :org
      t.string :date
      t.string :date_expire
      t.string :cerf_id
      t.string :cerf_url
      t.timestamps
    end
  end
end
