require 'report_builder'

time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")

time = Time.now.getutc

ReportBuilder.configure do |config|
 config.json_path = (File.join(File.dirname(__FILE__),"report.json"))
 config.report_path = "reports/historic_reports/report_build_template_#{time_stamp}"
 config.report_types = [:html]
 config.report_tabs = %w[Overview Features Scenarios Errors]
 config.report_title = 'Zé - Automation Mobile Results'
 config.compress_images = false
 config.additional_info = { 'Project name' => 'Zé Delivery', 'Platform' => 'PROD', 'Report generated' => time }
end

ReportBuilder.build_report