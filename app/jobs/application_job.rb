class ApplicationJob < ActiveJob::Base
  def perform(*guests)
    # Do something later
    config.active_job.queue_adapter = :sidekiq
  end

  # Automatically retry jobs that encountered a deadlock
  # retry_on ActiveRecord::Deadlocked

  # Most jobs are safe to ignore if the underlying records are no longer available
  # discard_on ActiveJob::DeserializationError
end
