# make directory command
# M-x make_directory or F6
module Textbringer
  module Commands
    define_command(:make_directory, doc: "Make directory.") do
      |dir_name = read_file_name("Make directory: ")|
      Dir.mkdir(dir_name)
      message("#{dir_name}")
    end
  end
  
  GLOBAL_MAP.define_key(:f6, :make_directory)
  
end
