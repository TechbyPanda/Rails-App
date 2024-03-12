# require 'slack/webhooks'

class StaticPagesController < ApplicationController
    token = "xoxe.xoxp-1-Mi0yLTEyNDc3MTcyODgxNjAtMzg3NjIwMDQwOTA0Mi02NzYyNDMyMjY4MTY1LTY3NTg3MTYyMjU4NDYtMDJlZWRiYzZhMzk0MmQ2MDAwMTkwOWU4YjYwMzM3ZWY2MjlmYzI1NGUxNmE2YTFjZWQ4MTFiZGUzMDg3Njg0YQ"
    def home
    end

    def slack
        # Replace with your actual value
    
        # Create a Slack client
        # client = Slack::Webhooks::Client.new(token: token)
    
        # # Specify the channel ID (public channel in this example)
        # channel_id = 'C016D4CNL4W'
    
        # # Fetch message history
        # message_history = client.conversations_history(channel: channel_id)
    
        # # Access and process message data (e.g., display in your view)
        # messages = message_history['messages']  # Array of message objects
    
        # # Handle potential errors or empty message history
        # if messages.empty?
        #   flash[:alert] = 'No recent messages found in the channel.'
        # end
    
        # @messages = messages  # Assign messages to an instance variable for the view
    end
end
