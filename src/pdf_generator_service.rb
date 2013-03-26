require "java"
require_relative "pdf_generator.rb"

class PDFGeneratorService < Java::javafx.concurrent.Service

  def createTask
    return PDFGenerator.new
  end

end