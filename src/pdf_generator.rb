require "java"
require "jrubyfx"

class PDFGenerator < Java::javafx.concurrent.Task

  def call

    tw = 1000000
    tw.times do |num|
      begin
        puts num
        self.updateProgress(num, tw)
      rescue InterruptedException => e
        break if self.isCancelled()
      end
    end
    puts "Done"

  end

end