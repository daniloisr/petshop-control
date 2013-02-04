# encoding: utf-8
require 'app_responder'

class ApplicationController < ActionController::Base
  protect_from_forgery

  respond_to :json, :html

  before_filter :authenticate_user!
end
