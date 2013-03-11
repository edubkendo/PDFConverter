require "java"

class TextFile
  attr_accessor :lines

  def initialize(text_path)
    @lines = Array.new
    read_file(text_path)
  end

private
  def read_file(file_path)
    File.open(file_path).each_line do |line|
      @lines.push(line.to_s)
    end
  end
end