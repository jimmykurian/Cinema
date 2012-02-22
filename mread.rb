fh = File.open('movies.txt')

while line = fh.gets
	if ( line =~ /^\((.+).*\) \((\d\d\d\d\W\d\d\W\d\d).*\)(.+) (.+) (.+)/ ) 
    # puts $1
    # puts $2
    # puts $3
    # puts $4
    # puts $5
    m = Movie.new
    m.title = $1
    m.year = $2
    m.director = $3
    m.genre = $4
    m.language = $5
    m.save
  end
end
fh.close
