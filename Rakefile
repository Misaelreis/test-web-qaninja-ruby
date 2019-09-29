require "time"

task :specs, [:tag] do |task, args|
    time = Time.now.utc.iso8601.tr(":","")
    report = "--format html --out=log/report_#{time}.html"
    sh "cucumber #{args[:tag]} #{report}"
end