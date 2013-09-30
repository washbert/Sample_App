require 'spec_helper'

describe "StaticPages" do
subject { page }
  describe "Home page" do
    before { visit root_path }
	it { should have_content('Sample App')}
	it { should have_title(full_title('')) }
  end
  
  describe "Help page" do
	before { visit help_path }
	it { should have_content('Help') }
	it { should have_title(full_title('Help')) }
	end
	
	describe "About page" do
	before { visit about_path }
	it { should have_content('About Us') }
	it { should have_title(full_title('About Us')) }
	end
	
	describe "Contact Page" do
	before { visit contact_path }
	it { should have_content('Contact Us') }
	it { should have_title(full_title('Contact Us')) }
	end
end