class VisitorsController < ApplicationController
    def index
        @all_hasuk = HasukHouse.all
    end
end
