class DashScreen
  def title(value)
    find_element(xpath: "//*[@text='#{value}']")
  end
end
