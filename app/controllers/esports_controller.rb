class EsportsController < ApplicationController
  before_action :fetch_event, only: [:index]


    def event_key
      ENV.fetch('EVENT_KEY')
    end

    def fetch_event
      data = JSON.parse(RestClient.get("http://api.isportsapi.com/sport/football/events?api_key=#{event_key}"))
      @events = data["data"].flat_map{ |data| data["events"] }.map { |event_data| Event.new(event_id: event_data["eventId"], player_id: event_data["playerId"],
      player_name: event_data["playerName"])}
    end
  end


