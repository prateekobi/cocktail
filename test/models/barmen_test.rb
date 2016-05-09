require 'test_helper'

 class BarmenTest < ActiveSupport::TestCase
   def setup
     @barmen = Barmen.new(barmenname: "Prateek", email: 'pat@gmail.com')
   end

   test 'barmenname should be valid' do
     assert @barmen.valid?
   end

   test 'barmenname should be present' do
     @barmen.barmenname = " "
     assert_not @barmen.valid?
   end

   test 'barmenname should not be too long' do
     @barmen.barmenname = "a" * 41
     assert_not @barmen.valid?
   end

   test 'barmenname should not be too short' do
     @barmen.barmenname = "aa"
     assert_not @barmen.valid?
   end

   test 'email should be present' do
     @barmen.email = " "
     assert_not @barmen.valid?
   end

   test 'email length should not be too long' do
     @barmen.email = "a" * 101 + "@example.com"
     assert_not @barmen.valid?
   end

   test 'email address should be unique' do
     dup_barmen = @barmen.dup
     dup_barmen.email = @barmen.email.upcase
     @barmen.save
     assert_not dup_barmen.valid?
   end

   test 'email validation should accept valid addresses' do
     valid_addresses = %w[user@eee.com R_TDD-DS@eee.hello.org user@example.com first.last@eee.com.au laura+jones@monk.cm]
     valid_addresses.each do |va|
       @barmen.email = va
       assert @barmen.valid?, "#{va.inspect} should be valid"
     end
   end

   test 'email validation should reject invalid addresses' do
     invalid_addresses = %w[user@example,com user_at_eee.org user.name@example. eee@i_av_.com ]
     invalid_addresses.each do |ia|
       @barmen.email = ia
       assert_not @barmen.valid?, "#{ia.inspect}should be invalid"
     end
   end
 end
