# == Schema Information
#
# Table name: donations
#
#  id           :integer          not null, primary key
#  donationtype :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Donation < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :categories
end

# d = Donation.first
# d.user
