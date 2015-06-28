defmodule ExRssBuilderTest do
  use ExUnit.Case
  test "Feed generation" do
    feed = %ExRssBuilder.Channel{
      title: "Elixir Channel",
      description: "This is the description",
      link: "http://www.elixirstream.com"
    }
    assert(ExRssBuilder.generate(feed) ==
    """
    <?xml version="1.0" encoding="UTF-8"?>
    <rss version="2.0">
      <channel>
        <title>Elixir Channel</title>
        <description>This is the description</description>
        <link>http://www.elixirstream.com</link>
      </channel>
    </rss>
    """
    )
  end

  test "Feed generation with other values" do
    feed = %ExRssBuilder.Channel{
      title: "Other title",
      description: "Other description",
      link: "http://www.link.com"
    }
    assert(ExRssBuilder.generate(feed) ==
    """
    <?xml version="1.0" encoding="UTF-8"?>
    <rss version="2.0">
      <channel>
        <title>Other title</title>
        <description>Other description</description>
        <link>http://www.link.com</link>
      </channel>
    </rss>
    """
    )
  end

  test "Item generation" do
    feed = %ExRssBuilder.Channel{
      title: "Other title",
      description: "Other description",
      link: "http://www.link.com"
    }
    item = %ExRssBuilder.Item{
      title: "Other title",
      description: "Other description",
      link: "http://www.link.com"
    }
    assert(ExRssBuilder.generate(feed) ==
    """
    <?xml version="1.0" encoding="UTF-8"?>
    <rss version="2.0">
      <channel>
        <title>Other title</title>
        <description>Other description</description>
        <link>http://www.link.com</link>
      </channel>
    </rss>
    """
    )
  end
end
