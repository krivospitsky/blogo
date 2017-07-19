module Blogo::Renderer
  class BB < Base
    add_dependency :gem => 'bb-ruby', :require => 'bb-ruby'

    # :nodoc:
    def render(raw_text)
      BBRuby.to_html(raw_text)
    end
  end
end