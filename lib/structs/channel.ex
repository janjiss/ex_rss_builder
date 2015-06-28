defmodule ExRssBuilder.Channel do
  defstruct title: nil, description: nil, link: nil
end

defmodule ExRssBuilder.Item do
  defstruct title: nil, description: nil, link: nil, pubdate: nil, guid: nil
end
