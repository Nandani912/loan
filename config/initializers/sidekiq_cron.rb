require 'sidekiq'
require 'sidekiq/cron/job'
Sidekiq::Cron::Job.create(name: 'CalInterestRateJob - every 5 minutes', cron: '*/5 * * * *', class: "CalInterestRateJob")
