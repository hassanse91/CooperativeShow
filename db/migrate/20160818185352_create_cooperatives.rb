class CreateCooperatives < ActiveRecord::Migration
  def change
    create_table :cooperatives do |t|
      t.string :name
      t.string :address
      t.string :numTel

      t.timestamps null: false
    end
  end
end
