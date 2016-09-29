class AddNameToLenderUnderwriting < ActiveRecord::Migration[5.0]
  def change
    add_column :lender_underwritings, :name, :string
  end
end
