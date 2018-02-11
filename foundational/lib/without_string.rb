def without_string(base, remove)
  base.gsub(/#{remove}/i, '')
end
