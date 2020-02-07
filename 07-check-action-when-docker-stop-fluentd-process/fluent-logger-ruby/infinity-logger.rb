require "fluent-logger"

# API: FluentLogger.new(tag_prefix, options)
log = Fluent::Logger::FluentLogger.new(nil, :host => 'fluentd', :port => 24224)
time  = Time.local(0, 0, 0, 1, 1, 2020, 0, 0, false, "JST")
count = 0
loop do
  t = time.utc.localtime("+09:00").strftime("%Y-%m-%dT%H:%M:%S%z")
  unless log.post("myapp.access", { count: count, accessed_time: t, unix_time: time.utc.to_i })
    puts "Failed COUNT=#{count} -> #{t}"
    exit
  end
  time  += 60
  count += 1
  sleep 0.1
end
