require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  'This is matt\'s sinatra web app!'
end
