
feature "allows player 1 to attack player 2" do
  scenario "player 1 can attack player 2" do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Jennifer attacked Canard")
  end
  scenario "player 2 can attack player 1" do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Canard's turn")
  end
end
