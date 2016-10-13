class LoanQuote < ApplicationRecord
  belongs_to :user
  has_many :lender_quotes

  enum property_type: [:single_family, :condo, :multi_family, :commercial]

  after_save :create_quotes

  validates :user_id, presence: true
  validates :property_type, presence: true
  validates :purchase, presence: true
  validates :occupied, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true
  validates :price, presence: true
  validates :down_payment, presence: true
  validates :rehab, presence: true
  validates :arv, presence: true
  validates :experience, presence: true
  validates :fico, presence: true
  validates :referral, presence: true

  def full_address
    "#{self.address} #{self.city} #{self.state}"
  end

  def create_quotes

    # What is needed to get an estimate

    lenders = User.local_lenders(self)

    policies = []

    lenders.each do | c |

      lender_policies = c.lender_underwritings

      lender_policies.each do | p |

          @loan_purchase = (p.ltv * self.price)

          @loan_rehab = (p.ltc * self.rehab)

          @origination_fee = ((@loan_purchase + @loan_rehab) * p.origination_fee)

          policies << LenderQuote.new(:draws => p.draws, :loan_quote_id => self.id, :interest_rate => p.interest_rate, :loan_purchase => @loan_purchase, :loan_rehab => @loan_rehab, :min_draw => p.min_draw, :min_final_draw => p.min_final_draw, :origination_fee => @origination_fee, :pre_payment => p.pre_payment, :term => p.term, :lender_underwriting_id => p.id)
      end
    end
      LenderQuote.import policies, on_duplicate_key_ignore: true
	end

end
