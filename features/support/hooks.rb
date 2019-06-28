Before do
  $driver.start_driver
end

After do |scenario|
    if scenario.failed?
      if !File.directory?("screenshots")
        FileUtils.mkdir_p("screenshots")
      end
    time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
    screenshot_name = time_stamp + ".png"
    screenshots_file = File.join("screenshots", screenshot_name)
    $driver.screenshot(screenshots_file)
    embed("#{screenshots_file}", "image/png")
  end
  $driver.driver_quit
end

AfterConfiguration do
  if File.directory?("screenshots")
  FileUtils.rm_r("screenshots")
    end
end
