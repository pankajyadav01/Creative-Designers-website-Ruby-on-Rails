class Video
  attr_accessor :raw_result

  def url
    "https://www.youtube.com/watch?v=#{video_id}"
  end

  def video_id
    raw_result.id.videoId
  end

  def title
    raw_result.snippet.title
  end
    
      def embedded_code
    %{
    <iframe width="560" height="315" src="#{embed_url}" frameborder="0" allowfullscreen></iframe>
    }
  end

  def embed_url
    "https://www.youtube.com/embed/#{video_id}"
  end
end
