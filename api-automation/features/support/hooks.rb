
################
# PAGE OBJECTS #
################

def request; Requests.new; end;

Before do |scenario|
    $base_url = 'https://samples.openweathermap.org/data/2.5'
    $appid = 'b6907d289e10d714a6e88b30761fae22'
end    

############
#  REPORT  #
############

unless File.directory?("reports/historic_reports}")
    FileUtils.mkdir_p("reports/historic_reports")
end

at_exit do
    system "ruby reports/report_builder.rb"
end
