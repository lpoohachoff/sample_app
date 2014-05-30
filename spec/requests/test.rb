describe "Authentication" do
  .
      .
      .
      describe "authorization" do

        describe "for non-signed-in users" do
          .
              .
              .
              describe "when attempting to visit a protected page" do
                before do
                  visit edit_user_path(user)
                  fill_in "Email",    with: user.email
                  fill_in "Password", with: user.password
                  click_button "Sign in"
                end

                describe "after signing in" do

                  it "should render the desired protected page" do
                    expect(page).to have_title('Edit user')
                  end

                  describe "when signing in again" do
                    before do
                      click_link "Sign out"
                      visit signin_path
                      fill_in "Email",    with: user.email
                      fill_in "Password", with: user.password
                      click_button "Sign in"
                    end

                    it "should render the default (profile) page" do
                      expect(page).to have_title(user.name)
                    end
                  end
                end
              end
        end
        .
        .
        .
        end
      end