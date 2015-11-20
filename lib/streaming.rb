require 'twitter'

class Streaming

  def initialize()
    @streaming_client = Twitter::Streaming::Client.new do |config|
      config.consumer_key = ENV['CONSUMER_KEY']
      config.consumer_secret = ENV['CONSUMER_SECRET']
      config.access_token = ENV['ACCESS_TOKEN_KEY']
      config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
    end

    @main_client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['CONSUMER_KEY']
      config.consumer_secret = ENV['CONSUMER_SECRET']
      config.access_token = ENV['ACCESS_TOKEN_KEY']
      config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
    end
    puts "initialize finished"
  end

  def exec()
    @streaming_client.user do |object|
      case object
      when Twitter::Tweet
        puts object.text
      else
      end
    end
  end
end
