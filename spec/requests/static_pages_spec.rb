require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Home') }
    it { should have_title("Joey Rosztoczy's Blog | Home") }
  end


  describe "Help page" do

    before { visit help_path}

    it { should have_content('Help') }
    it { should have_title("Joey Rosztoczy's Blog | Help") }

  end

  describe "About page" do

    before { visit about_path }

    it { should have_content('About us') }
    it { should have_title("Joey Rosztoczy's Blog | About") }
  end

  describe "Contact page" do

    before { visit contact_path }

    it {should have_content('Contact')}
  end
end

