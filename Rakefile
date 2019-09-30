require "time"
require "rake"

task :specs, [:tag, :browser] do |task, args|
    time = Time.now.utc.iso8601.tr(":","")
    report = "--format html --out=log/report_#{time}.html"
    sh "cucumber #{args[:tag]} #{report} #{args[:browser]}"
end