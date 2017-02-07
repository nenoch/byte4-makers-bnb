
def signup_with_valid_email
  visit '/'
  fill_in :email, with: 'test@test.com'
  fill_in :password, with: 'test'
  fill_in :password_confirmation, with: 'test'
  click_button 'Sign Up'
end

def login_wth_invalid_password
  signup_with_valid_email
  visit '/login'
  fill_in :email, with: 'test@test.com'
  fill_in :password, with: 'not_test'
  click_button 'Log In'
end

def create_listing
  signup_with_valid_email
  visit '/spaces/new'
  fill_in(:title, with: 'Casa della Pizza')
  fill_in(:description, with: 'Una casa con la mia pizza preferita, e mi piace.')
  fill_in(:price, with: 89.91)
  fill_in(:start_date, with: '04/07/2017')
  fill_in(:end_date, with: '08/07/2017')
  click_button('Create Listing')
end
