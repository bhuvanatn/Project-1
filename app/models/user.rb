# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  firstname  :text
#  lastname   :text
#  address    :text
#  subrub     :text
#  postcode   :integer
#  phone      :integer
#  email      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  has_many :donations
end
