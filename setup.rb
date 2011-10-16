#!/usr/bin/env ruby

require 'fileutils'

files = [ '.screenrc', '.vimrc' ]

repo_dir = File.expand_path(Dir.pwd)
home_dir = File.expand_path("~")

files.each do |file|
  repo_file = File.join(repo_dir, file)
  symlink = File.join(home_dir, file)
  FileUtils.ln_sf(repo_file, symlink)
end

