class Clients::DogsController < ApplicationController
  def index
    @dogs = current_client.dogs
    respond_with(@dogs)
  end

  private
  def current_client
    id = params[:client_id]
    id ||= params[:id]
    @current_client ||= Client.find(id)
  end
end
