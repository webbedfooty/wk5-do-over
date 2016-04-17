### PLAYERS ###

# NEW
get "/players/new" do
  @player = Player.new
  erb :"players/new"
end


# CREATE
post "/players" do
  @player = Player.new(params)
  if @player.save
    redirect to('/players')
  else
    erb :"players/new"
  end
end


# INDEX
get "/players" do
  @players = Player.all
  erb :"players/index"
end


# SHOW - add club here
get "/players/:id" do
  @player = Player.find_by_id(params['id'])
  @clubs = @player.clubs
erb :"players/show"
end

#-------------------------------
# CLUBS
get "/players/:id/clubs" do
  @player = Player.find_by_id(params['id'])
  @clubs = Club.all
  erb :"players/clubs"
end


patch "/players/:id/clubs" do
  @player = Player.find_by_id(params['id'])
  @clubs = Club.where(id: params['club_id'])

  @player.clubs = @clubs

  redirect to("/players/#{ @player.id }/clubs")
end
#-------------------------------
# EDIT
get "/players/:id/edit" do
  @player = Player.find_by_id(params['id'])
  @players = Player.all
  erb :"players/edit"
end


# UPDATE
patch "/players/:id" do
  @player = Player.find_by_id(params['id'])
  if @player.update_attributes(name: params['name'], value: params['value'])
    redirect to("/players/#{@player.id}")
  else
    erb :"players/edit"
  end
end


# DELETE
# check scratch for delete
# put in code for reassign_all_clubs
#  @player.reassign_all_clubs(@new_player)


# ALL CLUBS FOR A SPONSOR
