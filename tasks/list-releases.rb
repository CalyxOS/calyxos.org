#!/usr/bin/env ruby

require 'fileutils'
require 'yaml'

module ListReleases

  RELEASES_SOURCE = 'https://review.calyxos.org/CalyxOS/releases'
  RELEASE_DL_BASE = 'https://release.calyxinstitute.org/'
  HOME            = File.expand_path('../..', __FILE__)
  RELEASES_CACHE  = "#{HOME}/tmp/releases"
  RELEASES_PAGE   = "#{HOME}/pages/releases.md"

  class << self

    def clone_releases_repo
      FileUtils.mkdir_p(RELEASES_CACHE)
      Dir.chdir(RELEASES_CACHE) do
        `git clone #{RELEASES_SOURCE} .`
      end
    end

    def update_releases_repo
      Dir.chdir(RELEASES_CACHE) do
        `git pull`
      end
    end

    def update
      unless File.exist?(RELEASES_CACHE)
        clone_releases_repo
      end
      update_releases_repo
    end
  end
end

desc 'get list of all releases'
task 'list-releases' do
  ListReleases.update
end
