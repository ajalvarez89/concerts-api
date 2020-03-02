class ConcertChannel < ApplicationCable::Channel
  def subscribed
    stream_from "concert_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
