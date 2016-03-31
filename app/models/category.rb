class Category < ActiveRecord::Base
  has_and_belongs_to_many :donations

  def total
    t = 0
    donations.each do |d|
      t += d.amount if d.amount # Don't try adding nil donations to the total
    end
    return t
  end
end
