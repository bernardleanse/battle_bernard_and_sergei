feature Battle do
  scenario "dispalys text" do
    visit "/"

    expect(page).to have_text("Battle!")
  end

  scenario "filling in names and those names to be displayed" do
    visit "/"
    fill_in("Player_1_Name", with: "Bernard")
    fill_in("Player_2_Name", with: "Sergei")
    click_button("Submit")
    expect(page).to have_text("Bernard vs Sergei")
    
  end

end