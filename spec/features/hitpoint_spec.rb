
feature "Hitpoint display" do
  scenario "User can submit HP points and see them" do
    sign_in_and_play
    expect(page).to have_content "Opponent has 50HP!"
  end

  scenario "Player 1 can attack Player 2 and reduce P2's HP by 10" do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content "Opponent has 40HP!"
  end
end
