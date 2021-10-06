feature Battle do
  scenario "dispalys text" do
    visit "/"

    expect(page).to have_text("Battle!")
  end

  scenario "filling in names and those names to be displayed" do
    sign_in_and_play
    expect(page).to have_text("Bernard vs Sergei")
    
  end

  scenario "can view player 2 HP" do
    sign_in_and_play
    expect(page).to have_text("Player Sergei HP: 100")
  end

  scenario "press attack and get confirmation" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_text("Sergei was attacked by Bernard")
  end

  scenario "press attack and reduce hp by 10" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_text("Player Sergei HP: 90")
  end
end