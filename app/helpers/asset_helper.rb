module Sinatra
  module AssetHelper
    def asset_url(path)
      file, ext = path.split('.')
      "#{ext}/#{file}.#{ext}"
    end
  end
  helpers AssetHelper
end
