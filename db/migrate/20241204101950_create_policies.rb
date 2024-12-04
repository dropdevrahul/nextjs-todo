class CreatePolicies < ActiveRecord::Migration[7.2]
  def change
    create_table :policies do |t|
      t.string :name

      t.timestamps
    end
  end
end
