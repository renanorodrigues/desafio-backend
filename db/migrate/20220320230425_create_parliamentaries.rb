class CreateParliamentaries < ActiveRecord::Migration[6.0]
  def change
    create_table :parliamentaries do |t|
      t.string :full_name
      t.string :state
      t.string :political_party
      t.string :registration_ceap

      t.timestamps
    end
  end
end
