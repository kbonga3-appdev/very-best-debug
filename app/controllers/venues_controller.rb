class VenuesController < ApplicationController

  def index
    matching_venues = Venue.all
    @venues = matching_venues.order(:created_at)

    render({ :template => "venue_templates/venue_list.html.erb" })
  end

  def show
    venue_id = params.fetch("venue_id")
    matching_venues = Venue.where({ :id => venue_id }).at(0)
    @the_venue = matching_venues

    render({ :template => "venue_templates/details.html.erb" })
  end

  def create
    venue = Venue.new
    # venue.address = params.fetch("query_username")
     venue.address = params.fetch("query_address")
    venue.name = params.fetch("query_name")
    venue.neighborhood = params.fetch("query_neighborhood")
    venue.save

    

    # redirect_to("/venues/#{venue.name}")
    redirect_to("/venues/#{venue.id}")
  end
  
  def update
    the_id = params.fetch("venue_id")

    # @venue = Venue.where({ :id => the_id })
    venue = Venue.where({ :id => the_id }).at(0)
    venue.address = params.fetch("query_address")
    venue.name = params.fetch("query_name")
    venue.neighborhood = params.fetch("query_neighborhood")
    venue.save
    
    redirect_to("/venues/#{venue.id}")
  end

  def destroy
      # the_id = params.fetch($var)
      the_id = params.fetch("venue_ids")
    #  the_id = $var
    #  the_id = $var 
    matching_venues = Venue.where({ :id => the_id }).at(0)
    venue = matching_venues
    venue.destroy
     
    
    redirect_to("/venues")
  end

end
