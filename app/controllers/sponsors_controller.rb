### SPONSORS ###

# NEW
get "/sponsors/new" do
  @sponsor = Sponsor.new
  erb :"sponsors/new"
end


# CREATE
post "/sponsors" do
  @sponsor = Sponsor.new(params)
  if @sponsor.save
    redirect to("/sponsors")
  else
    erb :"sponsors/new"
  end
end


# INDEX
get "/sponsors" do
  @sponsors = Sponsor.order(:name)
  erb :"sponsors/index"
end


# SHOW w Clubs
get "/sponsors/:id" do
  @sponsor = Sponsor.find_by_id(params['id'])
  @clubs = @sponsor.clubs
erb :"sponsors/show"
end


#-------------------------------
# CLUBS
get "/sponsors/:id/clubs" do
  @sponsor = Sponsor.find_by_id(params['id'])
  @clubs = Club.all
  erb :"sponsors/clubs"
end


patch "/sponsors/:id/clubs" do
  @sponsor = Sponsor.find_by_id(params['id'])
  @clubs = Club.where(id: params['club_id'])

  @sponsor.clubs = @clubs

  redirect to("/sponsors/#{ @sponsor.id }/clubs")
end
#-------------------------------
# EDIT
get "/sponsors/:id/edit" do
  @sponsor = Sponsor.find_by_id(params['id'])
  @sponsors = Sponsor.order(:name)
  erb :"sponsors/edit"
end


# UPDATE
patch "/sponsors/:id" do
  @sponsor = Sponsor.find_by_id(params['id'])
  if @sponsor.update_attributes(name: params['name'])
    redirect to("/sponsors/#{@sponsor.id}")
  else
    erb :"sponsors/edit"
  end
end


# DELETE
delete "/sponsors/:id/?" do
  @sponsor = Sponsor.find_by_id(params['id'])
  @sponsor.destroy
  redirect to("/sponsors")
end
