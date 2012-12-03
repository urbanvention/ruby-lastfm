class Lastfm
  module MethodCategory
    class Artist < Base
      regular_method :get_top_tracks, [:mbid], [] do |response|
        response.xml['toptracks']['track']
      end

      regular_method :get_top_albums, [:mbid], [] do |response|
        response.xml['topalbums']['album']
      end

      regular_method :get_info, [:mbid], [] do |response|
        response.xml['artist']
      end

      regular_method :get_events, [:mbid], [] do |response|
        response.xml['events']['event']
      end

      regular_method :get_images, [:mbid], [] do |response|
        response.xml['images']['image']
      end

      regular_method :get_similar, [:mbid], [] do |response|
        response.xml['similarartists']['artist']
      end

      regular_method :get_tags, [:mbid], [[:user, nil], [:mbid, nil], [:autocorrect, nil]] do |response|
        response.xml['tags']['tag']
      end

      regular_method :get_top_fans, [:mbid], [] do |response|
        response.xml['topfans']['user']
      end

      regular_method :search, [:artist], [[:limit, nil], [:page, nil]]
    end
  end
end
