#!/usr/bin/env ruby

require 'fileutils'
require 'yaml'

module GitFetch

  REMOTE_URL      = "https://github.com/glenn-sorrentino/design-system.git"
  LOCAL_DIR       = "pages/_sass/design-system"
  BRANCH          = "main"
  INCLUDE_DIR     = %w(assets builder components css LICENSE README.md)
  INCLUDE_FILE    = %w(LICENSE README.md)
  TMP             = "/tmp/design-system"

  class << self
    def clone
      FileUtils.mkdir_p(TMP)
      Dir.chdir(TMP) do
        if File.exist?('.git')
          `git pull --rebase`
          `git checkout #{BRANCH}`
        else
          `git clone --depth 1 #{REMOTE_URL} .`
          `git checkout #{BRANCH}`
        end
        #Dir.glob('*').each do |file|
        #  unless INCLUDE.include?(file)
        #    `rm -r '#{file}'`
        #  end
        #end
      end
    end

    def sync
      cmd = []
      cmd << "rsync -r --verbose --delete"
      #cmd << "--dry-run"
      cmd << "--exclude .git"
      cmd << "--exclude html"
      cmd << "--exclude js"
      INCLUDE_DIR.each do |inc|
        cmd << "--include '#{inc}/'"
      end
      INCLUDE_FILE.each do |inc|
        cmd << "--include '#{inc}'"
      end
      cmd << "--include 'components/*'"
      cmd << "--include '**/*.css'"
      cmd << "--include '**/*.scss'"
      cmd << "--exclude '*'"
      if TMP =~ /\/$/
        cmd << TMP
      else
        cmd << TMP + "/"
      end
      cmd << LOCAL_DIR
      puts cmd.join(' ')
      puts `#{cmd.join(' ')}`
    end

    def update
      clone
      sync
    end
  end
end

desc 'Grab the upstream CSS framework'
task 'update-css' do
  GitFetch.update
end
