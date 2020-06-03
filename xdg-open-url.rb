# Open URL using xdg-open 
# M-x xdg_open_url or C-x m
module Textbringer
  module Commands
    define_command(:xdg_open_url, doc: "xdg-open URL.") do
      |url = read_from_minibuffer("URL: ")|
      system("xdg-open", url)
    end
  end
  
  GLOBAL_MAP.define_key("\C-xm", :xdg_open_url)
  
end
