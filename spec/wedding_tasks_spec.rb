require 'spec_helper'
require_relative '../wedding_app'

Capybara.app = WeddingApp

feature "Wedding Tasks" do

  scenario "it records and finds wedding tasks" do

    visit '/'
    expect(page).to have_no_content('buy dress')
    fill_in 'Wedding Task', with: 'wedding_task'
    click_on 'Add Task'
    expect(page).to have_content('wedding_task')

  end

end