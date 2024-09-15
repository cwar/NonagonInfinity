module Api
  module V1
    class SetlistsController < ApplicationController
      def index
        @setlists = Setlist.all
        render json: @setlists
      end
    end
  end
end
