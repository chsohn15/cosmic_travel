class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.integer :scientist_id
      t.integer :planet_id
      t.string :name

      t.timestamps
    end
  end
end
