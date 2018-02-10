class String
  def explode
    str = ''
    chars.each.with_index do |c, idx|
      0.upto(idx).with_index { |i| str.concat(self[i]) }
    end
    str
  end
end
