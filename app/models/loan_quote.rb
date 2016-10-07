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

          @draws = p.draws

          @interest_rate = p.interest_rate

          @loan_purchase = (p.ltv * self.price)

          @loan_rehab = (p.ltc * self.rehab)

          @min_draw = p.min_draw

          @min_final_draw = p.min_final_draw

          @origination_fee = ((@loan_purchase + @loan_rehab) * p.origination_fee)

          @pre_payment = p.pre_payment

          @lender_underwriting_id = p.id

          @term = p.term

          hash = {:draws => @draws, :interest_rate => @interest_rate, :loan_purchase => @loan_purchase, :loan_rehab => @loan_rehab, :min_draw => @min_draw, :min_final_draw => @min_final_draw, :origination_fee => @origination_fee, :pre_payment => @pre_payment, :term => @term, :lender_underwriting_id => @lender_underwriting_id}

          policies.push(hash)

	    end
	end
        policies.each do |policy|

          policies_hash = {}
          policies_hash[:draws] = policy[:draws]
          policies_hash[:interest_rate] = policy[:interest_rate]
          policies_hash[:loan_purchase] = policy[:loan_purchase]
          policies_hash[:loan_rehab] = policy[:loan_rehab]
          policies_hash[:min_draw] = policy[:min_draw]
          policies_hash[:min_final_draw] = policy[:min_final_draw]
          policies_hash[:origination_fee] = policy[:origination_fee]
          policies_hash[:pre_payment] = policy[:pre_payment]
          policies_hash[:term] = policy[:term]
          policies_hash[:lender_underwriting_id] = policy[:lender_underwriting_id]
          

            if self.lender_quotes.exists?(lender_underwriting_id: policy[:lender_underwriting_id])

            else
            p = LenderQuote.new(policies_hash)

            p.loan_quote_id = self.id

            p.save
            end
        end
  	end
end
