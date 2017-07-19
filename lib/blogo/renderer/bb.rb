module Blogo::Renderer
  class BB < Base
    add_dependency :gem => 'bb-ruby', :require => 'bb-ruby'

    # :nodoc:
    def render(raw_text)
      "1" + raw_text.bbcode_to_html({}, false)
    end
  end
end