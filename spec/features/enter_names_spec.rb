feature "Enter names" do
  scenario "user can fill in and submit name" do
    visit("/")
    fill_in("name1", with: "Jim")
    fill_in("name2", with: "Robert")
    click_button("Start Battle!")
    expect(page).to have_content "Jim vs. Robert"
  end
end
