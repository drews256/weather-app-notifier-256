ActiveSupport::Notifications.subscribe('webhook.error') do |*args|
  events = []
  events << ActiveSupport::Notifications::Event.new(*args)
  events.each do |event|
    Rails.logger.info(event.payload)
  end
end

ActiveSupport::Notifications.subscribe('webhook.success') do |*args|
  events = []
  events << ActiveSupport::Notifications::Event.new(*args)
  events.each do |event|
    Rails.logger.info(event.payload)
    WeatherCheckService.perform_async(payload: event.payload[:payload][:webhook_job_response])
  end
  #  TODO:  <17-11-18, andrew stuntz> # push out notifier for webhook
end

