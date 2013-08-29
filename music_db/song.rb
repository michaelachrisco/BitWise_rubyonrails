class Song
  @artist = 'The Progues'

  def artist; 'Led Zeppelin'; end
  def get_the_artist; @artist; end

  def class_artist
    self.class.artist
  end
end
