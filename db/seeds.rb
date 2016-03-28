User.destroy_all
u1 = User.create :firstname =>'Sai', :lastname => 'Desosa', :address => 'New York',
:subrub => 'rosehill', :postcode => '3019', :phone => '12345345', :email => 'carmand@gmail.com'

u2 = User.create :firstname =>'Ramya', :lastname => 'Kumari', :address => 'Wasington',
:subrub => 'Ranwick', :postcode => '3019', :phone => '12345345', :email => 'carmand@gmail.com'


Donation.destroy_all

d1 = Donation.create :donationtype => 'Community Welfare Fund'
d2 = Donation.create :donationtype => 'Building Fund'
d3 = Donation.create :donationtype => 'General'

DonationUser.destroy_all
du1 = DonationUser.create :amount => '300'
du2 = DonationUser.create :amount => '200'
