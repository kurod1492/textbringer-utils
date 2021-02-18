# my_make_directory
# upstream に make_directory が実装されたので、my_make_directory に名前を変える
# M-x my_make_directory or F6
module Textbringer
  module Commands
    define_command(:my_make_directory, doc: "Make directory.") do
      |dir_name = read_file_name("Make directory: ",
                                 default: Buffer.current.file_name &&
                                 File.dirname(Buffer.current.file_name))|
      FileUtils.mkdir_p(dir_name)
      message("mkdir -p #{dir_name}")
      Clipboard.copy(dir_name) # dir_name をクリップボードにコピーする(この行は無くても動く)
    end
  end
  
  GLOBAL_MAP.define_key(:f6, :my_make_directory)
  
end
