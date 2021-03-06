get '/login' do
  erb :'sessions/login', layout: !request.xhr?
end

post '/login' do
  @user = User.find_by(username: params[:user][:username])

  if @user.password == params[:user][:password]
    login(@user)
    redirect '/questions'
  else
    erb :'/sessions/login'
  end
end

get '/logout' do
  logout
  redirect '/'
end
