class Estimate < ApplicationRecord
  belongs_to :project_feature
  belongs_to :price_features

  def how_to_create_estimate
  end

  def what_i_need_to_get
  end

  def what_to_do_with_it
  end
  Estimate.where("project_feature_id = :feature_id OR price_feature_id = :feature_id", feature_id: feature_id)
          .pluck(:project_feature_id, :price_feature_id).uniq.compact - [feature_id]
  end
  # has_many :features, through: :price_features

  # def estimate_exist?(estimate)
  # 	self.project_feature_id
  # end


# class JobquoteOrder < ActiveRecord::Base
#   belongs_to :jobquote
#   belongs_to :order
#   has_many :po_receipts, dependent: :restrict_with_exception
#   has_many :receipts, through: :po_receipts
#   validates_presence_of :jobquote_id, :order_id, :qty, :total_cost
#   validates_uniqueness_of :jobquote_id, scope: [:order_id, :qty, :total_cost], message: 'That order already exists.'

#   scope :receipts, -> {PoReceipt.uniq.pluck(:jobquote_order_id)}
#   scope :summed_receipt, ->(jq_id) {PoReceipt.where(jobquote_order_id: jq_id)
# .sum(:qty)}

#   scope :open_orders, -> {find(o_c_orders("open"))}

#   scope :closed_orders, -> {find(o_c_orders("closed"))}

#   def self.o_c_orders(which)
#     ret_arr = []
#     case which
#     when "open"
#       receipts.each do |id|
#         ret_arr << id unless is_closed?(id)
#       end
#       ret_arr << self.includes(:po_receipts).where(:po_receipts => {:id => nil}).pluck(:id)
#     when "closed"
#       receipts.each do |id|
#         ret_arr << id if is_closed?(id)
#       end
#     end
#     return ret_arr
#   end

#   def self.is_closed?(jq_id)
#     jq = self.find(jq_id)
#     if jq.qty <= summed_receipt(jq_id)
#       true
#     else
#       false
#     end
#   end
# end  