require '../../HelloRuby/MetaProgram/entity'
class Movie < Entity
  def initialize(ident)
    super('movies', ident)
  end

  def title
    get('title')
  end

  def title=(value)
    set('title', value)
  end

  def director
    get('director')
  end

  def director=(value)
    set('director', value)
  end
end

movie = Movie.new(1)
movie.title = 'Doctor Strangelove'
movie.director = 'Stanley Kubrick'