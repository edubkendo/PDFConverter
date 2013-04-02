require "java"
require "jrubyfx"

java_import 'java.lang.InterruptedException'

class PDFGenerator < Java::javafx.concurrent.Task

  def call

    tw = 1000000
    tw.times do |num|
      puts num
      self.updateProgress(num, tw)
      return if self.isCancelled()
    end
    puts "Done"

  end

end