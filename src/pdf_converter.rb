# This file was auto-generated by jrubyfx-generator at 2013-03-09T03:25:47-06:00

require 'jrubyfx'
require "text_file"

class PDFConverterApplication < JRubyFX::Application
  def start(stage)
    with(stage, title: "PDFConverter")
    PDFConverterController.new("pdf_converter.fxml", stage)
    stage.show()
  end
end

class PDFConverterController
  include JRubyFX::Controller

  # nodes with ruby method-like fx:ids may be accessed directly
  def initialize
    # x1
    charsPerLine
    # vboxTextContainer
    # text_container
      # chars_meta = charsPerLine.css_meta_data
      # chars_meta.each do |meta|
      #   puts meta
      # end
  end

  on :openText do |event|
    dialog = file_chooser(:title => "Select text file to convert") do
      add_extension_filter("Text File (*.txt)")
    end
    file = dialog.showOpenDialog(stage)
    unless file == nil
      prior_text = text_container.children
      text_container.children.removeAll(prior_text)
      text_strings = TextFile.new(file.path)
      text_strings.lines.each do |line_string|
        text_line = text(line_string)
        text_container.children.add text_line
      end
    end
  end

  on :previewPDF do |event|
    # TODO: Auto-generated event handler
    puts "Action event 'previewPDF' called"
  end

  on :savePDF do |event|
    # TODO: Auto-generated event handler
    puts "Action event 'savePDF' called"
  end

end

PDFConverterApplication.launch
