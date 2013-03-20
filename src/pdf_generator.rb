require "java"
require "jrubyfx"

class PDFGenerator < Java::javafx.concurrent.Task

  def call

    tw = 100000
    tw.times do |num|
      puts num
      self.updateProgress(num, tw)
      #java_send(:updateProgress, [Java::long, Java::long], num, tw)
    end
    puts "Done"

  end

end