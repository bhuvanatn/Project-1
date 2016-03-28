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
end
