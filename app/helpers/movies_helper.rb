module MoviesHelper
  def embed_youtube(url)
    tag.iframe(
      width: 200,
      height: 350,
      src: url,
      frameborder: 0,
      allow: "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture",
      allowfullscreen: true
    )
  end
end
