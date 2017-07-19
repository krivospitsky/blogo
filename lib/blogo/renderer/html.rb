module Blogo::Renderer
  class Html < Base
    # :nodoc:
    def render(raw_text)
      '2' + raw_text.dup
    end
  end
end
