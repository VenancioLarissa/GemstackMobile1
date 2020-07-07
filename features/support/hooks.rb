Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10

  @screen = DroidScreens.new
end

After do
  shot = driver.screenshot_as(:base64)
  embed(shot, "image/png", "Screenshot")

  driver.quit_driver
end
