class Api::WebsocketsController < ApplicationController
  respond_to :json

  def configuration
    subscription = PrivatePub.subscription channel: params.fetch(:channel) { '/messages/new' }

    respond_with subscription
  end
end