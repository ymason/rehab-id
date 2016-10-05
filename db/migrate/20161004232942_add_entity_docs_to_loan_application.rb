class AddEntityDocsToLoanApplication < ActiveRecord::Migration[5.0]
  def change
    add_column :loan_applications, :entity_docs, :string
  end
end
