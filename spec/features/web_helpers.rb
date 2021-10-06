def sign_in_and_play
  visit '/'
  fill_in("Player_1_Name", with: "Bernard")
  fill_in("Player_2_Name", with: "Sergei")
  click_button("Submit")
end