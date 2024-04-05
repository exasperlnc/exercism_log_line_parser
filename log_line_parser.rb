class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    first_char = @line.index(' ')
    @line[first_char..-1].strip
  end

  def log_level
    b1 = @line.index('[')
    b2 = @line.index(']')
    @line[b1+1...b2].downcase
  end

  def reformat
    "#{self.message} (#{log_level})"
  end
end
