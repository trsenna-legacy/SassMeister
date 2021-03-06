require_relative 'app.rb'

class SassMeisterEmbeddedApp < SassMeisterApp
  set :protection, except: :frame_options

  get '/' do
    redirect APP_DOMAIN
  end

  get '/*' do
    File.read 'public/index.html'
  end

  run! if app_file == $0
end

