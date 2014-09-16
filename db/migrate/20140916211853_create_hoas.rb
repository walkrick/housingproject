class CreateHoas < ActiveRecord::Migration
  def change
    create_table :hoas do |t|
      t.integer :user_id, null: false
      t.string :location, null: false
      t.string :document, null: false

    end
  end
end
