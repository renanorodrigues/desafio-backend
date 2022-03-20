class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.timestamp :data_issue
      t.string :provider
      t.references :parliamentary, null: false, foreign_key: true
      t.decimal :net_value, precision: 8, scale: 2
      t.string :url_document

      t.timestamps
    end
  end
end
