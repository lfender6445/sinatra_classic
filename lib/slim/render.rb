require 'slim'

module Slim
  module Render
    def partial(path, locals = {})
      parts = path.split('/')
      parts[-1] = '_' + parts[-1]
      slim parts.join('/').to_sym, locals: locals
    end
  end
end
