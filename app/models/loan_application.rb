class LoanApplication < ApplicationRecord
  belongs_to :lender_loan
  belongs_to :lender_quote
  mount_uploader :entity_docs, EntityDocsUploader
end
