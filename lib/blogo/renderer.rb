require 'blogo/renderer/base'
require 'blogo/renderer/html'
require 'blogo/renderer/markdown'
require 'blogo/renderer/bb'

module Blogo
  module Renderer
    # Maps format names to renderers.
    RENDERERS = {
      :markdown => Blogo::Renderer::Markdown,
      :html     => Blogo::Renderer::Html
      :bb     => Blogo::Renderer::BB
    }

    # Find and initialize renderer for a particular markup format.
    #
    # @param format [Symbol, String]
    #
    # @return [Blogo::Renderer::Base]
    def self.get(format)
      if renderer_class = RENDERERS[format.to_sym]
        renderer_class.load_dependencies!(format)
        renderer_class.new
      else
        raise(Blogo::Error, "Can't find renderer #{format.inspect}")
      end
    end
  end
end
