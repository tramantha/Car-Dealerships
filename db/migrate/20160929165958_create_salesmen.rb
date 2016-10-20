class CreateSalesmen < ActiveRecord::Migration
  def change
    create_table :salesmen do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address

      t.timestamps null: false
    end
  end
end
