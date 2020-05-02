# insert DateTime.now
# M-x insert_datetime_now or F5
# 
CONFIG[:insert_datetime_now_format] = "%Y%m%d-%H%M"

module Textbringer
  module Commands
    define_command(:insert_datetime_now, doc: "Insert DateTime.now.") do
      Buffer.current.insert(DateTime.now.strftime(CONFIG[:insert_datetime_now_format]))
    end
  end

  GLOBAL_MAP.define_key(:f5, :insert_datetime_now)

end
