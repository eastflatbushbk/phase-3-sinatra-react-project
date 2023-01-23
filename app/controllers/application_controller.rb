class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/teams" do
    teams = Team.all.order(:standing)
      teams.to_json
  end
  get '/teams/:id' do
    teams = Team.find(params[:id])
    if teams
    teams.to_json(include: :players)
    else
      "404 - not found"
      end
  end
  post '/teams' do
    team = Team.create(
      name: params[:name], 
      neighborhood: params[:neighborhood], 
      homeground: params[:homeground] 
    )
    team.to_json 
  end
  delete '/teams/:id' do
    team = Team.find(params[:id])
    team.destroy
    team.to_json
  
  end
  patch '/teams/:id' do
    team = Team.find(params[:id])
    team.update(
      name: params[:name], 
      neighborhood: params[:neighborhood], 
      homeground: params[:homeground] 
     )
    team.to_json 
  end
  get '/players/:id' do
    players = Player.find(params[:id])
    if players
    players.to_json
    else
      "404 - not found"
      end
  end

  post '/players' do
    player = Player.create(
      name: params[:name], 
      position: params[:position], 
      status: params[:status],
      team_id: params[:team_id] 
      )
    player.to_json 
  end

  delete '/players/:id' do
    player = Player.find(params[:id])
    player.destroy
    player.to_json
  
  end

  patch '/players/:id' do
    player = Player.find(params[:id])
    player.update(
      name: params[:name], 
      position: params[:position],
      status: params[:status]
    )
    player.to_json 
  end

  get '/teams/:id/players' do
    teams = Team.find(params[:id])
    if teams
    teams.players.to_json
    else
      "404 - not found"
      end
  end


end
