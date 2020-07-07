class LoginScreen
  def with(email, tech)
    find_element(accessibility_id: "emailInput").send_keys(email)
    find_element(accessibility_id: "techsInput").send_keys(tech)
    find_element(xpath: "//*[@text='Encontrar spots']").click
  end
end
