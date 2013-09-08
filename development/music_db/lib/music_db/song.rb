require_relative 'yamlable'

# This class creates a Song object within the MusicDB Object.
class MusicDB::Song
  include MusicDB::YAMLable

  attr_accessor :title, :artist, :album, :track
# @param [String] title The title of the Song.
# @param [String] artist The artist of the Song.
# @param [nil] album The album of the Song.
# @param [nil] track The track of the Song.
  def initialize(title, artist, album=nil, track=nil)
    @title = title
    @artist = artist
    @album = album
    @track = track
  end

# @return [output] output the title, artist, album and track in one line.
  def to_s
    output = "title: #{@title}\n"
    output << "artist: #{@artist}\n"
    output << "album: #{@album}\n"
    output << "track: #{@track}\n"

    output
  end
# @return title string
# @return artist string
# @return album
# @return track
  def attributes
    {
      title: @title,
      artist: @artist,
      album: @album,
      track: @track
    }
  end
end
