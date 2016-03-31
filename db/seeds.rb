User.destroy_all
u1 = User.create :firstname =>'Sai', :lastname => 'Desosa', :address => 'New York',
:subrub => 'rosehill', :postcode => '3019', :phone => '12345345', :email => 'carmand@gmail.com'

u2 = User.create :firstname =>'Ramya', :lastname => 'Kumari', :address => 'Wasington',
:subrub => 'Ranwick', :postcode => '3019', :phone => '12345345', :email => 'carmand@gmail.com'


Donation.destroy_all

d1 = Donation.create :amount => 1
d2 = Donation.create :amount => 2
d3 = Donation.create :amount => 3

Category.destroy_all

c1 = Category.create :categorytype=> 'Community Welfare Fund'
c1 = Category.create :categorytype=> 'Building Fund'
c1 = Category.create :categorytype=> 'Benevolent Fund'
c1 = Category.create :categorytype=> 'Sponsor a Brick'
c1 = Category.create :categorytype=> 'General'

u1.donations << d1
u2.donations << d2 << d3

d1.categories << c1
d2.categories << c2
d3.categories << c3
