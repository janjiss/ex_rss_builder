defmodule ExRssBuilder do
  def generate(%ExRssBuilder.Channel{} = channel) do
    """
    <?xml version="1.0" encoding="UTF-8"?>
    <rss version="2.0">
      <channel>
        <title>#{channel.title}</title>
        <description>#{channel.description}</description>
        <link>#{channel.link}</link>
      </channel>
    </rss>
    """
  end
end
