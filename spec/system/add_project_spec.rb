# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'adding a project', type: :system do
  it 'allows a user to create a project with tasks' do
    visit new_project_path
    fill_in 'Name', with: 'Project Runner'
    fill_in 'Tasks', with: 'Ohhhh Snap!'
    click_on 'Create Project'

    visit projects_path
    expect(page).to have_content 'Project Runner'
    expect(page).to have_content 8
  end
end
