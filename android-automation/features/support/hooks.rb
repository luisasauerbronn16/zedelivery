################
# PAGE OBJECTS #
################

def baseScreen; BaseScreen.new; end
def welcomePage; WelcomePage.new; end
def signupPage; SignupPage.new; end
def confirmPhonePage; ConfirmPhonePage.new; end
def findAddressPage; FindAddressPage.new; end
def addressPage; AddressPage.new; end
def orderDetailsPage; OrderDetailsPage.new; end
def productsPage; ProductsPage.new; end
def totalProductsPage; TotalProductsPage.new; end

##################
#  PASTA REPORT  #
##################

unless File.directory?("reports/historic_reports}")
    FileUtils.mkdir_p("reports/historic_reports")
end

Before do |scenario|

    ############
    #   CAPS   #
    ############
    
    caps_path = File.join(File.dirname(__FILE__), '..', '..', 'caps')
    caps_file = File.join(caps_path, "local.txt")
    caps = Appium.load_appium_txt file: caps_file, verbose: true

    Appium::Driver.new(caps, true)
    Appium.promote_appium_methods Object

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
        $driver.screenshot(screenshot_file)
        embed("#{screenshot_file}", "image/png")
    end
    
    $driver.driver_quit
end

at_exit do
    system "ruby reports/report_builder.rb"
end