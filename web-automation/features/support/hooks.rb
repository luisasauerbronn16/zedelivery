
################
# PAGE OBJECTS #
################

def homePage; HomePage.new; end
def productsPage; ProductsPage.new; end
def signupPage; SignupPage.new; end

##################
#  PASTA REPORT  #
##################

unless File.directory?("reports/historic_reports}")
    FileUtils.mkdir_p("reports/historic_reports")
end

###############
#    BEFORE   #
###############

Before do |scenario|
    
    $url = 'https://www.ze.delivery/'

end

##############
#    AFTER   #
##############

After do |scenario|
    sleep 2

    #screenshots
    if scenario.failed?
        screenshot_date = Time.now.strftime("%Y-%m-%d_%H-%M-%S")

        unless File.directory?("reports/screenshots/#{scenario.feature.name}_screenshots_#{screenshot_date}") 
            FileUtils.mkdir_p("reports/screenshots/#{scenario.feature.name}_screenshots_#{screenshot_date}")
        end

        time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")

        screenshot_name = "#{time_stamp}.png"
        screenshot_file = File.join("reports/screenshots/#{scenario.feature.name}_screenshots_#{screenshot_date}", screenshot_name)
        page.save_screenshot(screenshot_file)
        embed("#{screenshot_file}", "image/png")
    end
end

at_exit do
    system "ruby reports/report_builder.rb"
end