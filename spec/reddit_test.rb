describe "Logging in and out of reddit" do
  it "can log in to the site" do
    @driver.navigate.to "http://www.reddit.com"

    u_field = @driver.find_element(:name, 'user')
    u_field.send_keys "bumblebeeexample"

    p_field = @driver.find_element(:name, 'passwd')
    p_field.send_keys "123abc!!"

    login = @driver.find_element(:tag_name, 'button')
    login.click
    sleep 5

    expect(@driver.find_elements(:css, '.logout a').length).to be > 0
  end
end