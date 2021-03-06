require "java"
require "jrubyfx"

class PDFGenerator < Java::javafx.concurrent.Task

  def call

    tw = 1000000
    tw.times do |num|
      begin
        puts num
        self.updateProgress(num, tw)
        return if self.isCancelled()
      rescue java.lang.InterruptedException => e
        puts "#{e}"
        return "Cancelled"
      end
    end
    puts "Done"

  end

end