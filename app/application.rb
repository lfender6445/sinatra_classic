require_relative '../config/boot'

class MyApplication < Sinatra::Application
  include Slim::Render

  set :views, Proc.new { File.join(ROOT, 'app/views/') }

  get '/' do
    slim :'templates/index', layout: :'layouts/application'
  end

end
