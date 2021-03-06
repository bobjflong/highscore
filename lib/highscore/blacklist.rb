$:.unshift(File.dirname(__FILE__))
require "wordlist"

module Highscore

  # blacklisted words to be ignored in the resulting keywords
  #
  class Blacklist < Wordlist

    # load default file
    #
    # @return Highscore::Blacklist
    def self.load_default_file
      file_path = File.join(File.dirname(__FILE__), %w{.. blacklist.txt})
      self.load_file(file_path)
    end
  end
end