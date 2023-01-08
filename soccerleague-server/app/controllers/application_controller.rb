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
      homeground: params[:homeground], 
      standings: params[:standings]
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
      homeground: params[:homeground], 
      standings: params[:standings]
    )
    team.to_json 
  end


end
