require_relative "models/text_analyzer.rb"
require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]
   
    @analyzed_text = TextAnalyzer.new(text_from_user)
   
    erb :results
  end

# or
#   post '/' do
#   @analyzed_text = TextAnalyzer.new(params[:user_text])
#
#   erb :results
# end
end
