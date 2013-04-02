require "jrubyfx"

class ProgressAlert < Java::javafx::scene::layout::HBox
  include JRubyFX::Control

  def initialize(task)
    for_pbar
    vboxTextContainer
    cancel_button

    p_bar = ProgressBar.new
    @p_bar = p_bar
    vboxTextContainer.children.add 1, p_bar
    cancel_task(cancel_button, task)
  end

  def p_bar
    @p_bar
  end

  def cancel_task(button, task)
    button.set_on_mouse_clicked do |event|
      if task.isRunning
        task.cancel()
      end
    end
  end

end