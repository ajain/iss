class CreateFirms < ActiveRecord::Migration
  def change
    create_table :firms do |t|
      t.string :firm_short_name
      t.string :firm_legal_name
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
