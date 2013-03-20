require "jrubyfx"

class ProgressAlert < Java::javafx::scene::layout::HBox
  include JRubyFX::Control

  def initialize
    for_pbar
    vboxTextContainer
    p_bar = ProgressBar.new
    @p_bar = p_bar
    vboxTextContainer.children.add p_bar
  end

  def p_bar
    @p_bar
  end

end