require 'rails_helper'

describe 'book index page' do
  it 'should show a list of books with author' do
   neil = Astronaut.create(name:'Neil Armstrong', age: 37, job: "Commander")
 

    visit astronauts_path
    

    expect(page).to have_content(neil.name)
    expect(page).to have_content(neil.age)
    expect(page).to have_content(neil.job)
  end
end