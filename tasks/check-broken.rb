desc "Check for broken links"
task :check do
  require 'html-proofer'
  directory = ENV["DIR"] || "./static"
  options = {
    assume_extension: true,
    disable_external: true,
    empty_alt_ignore: true
  }
  HTMLProofer.check_directory(directory, options).run
end

desc "Check for broken external links (slow)"
task "check-external" do
  require 'html-proofer'
  directory = ENV["DIR"] || "./static"
  options = {
    assume_extension: true,
    external_only: true,
    empty_alt_ignore: true,
    log_level: :info,
    # google websites have some anti-bot thing that makes the link
    # checker fail in 302 infinite redirects:
    http_status_ignore: [302],
    url_ignore: [
      # these are temporary, might be dead
      /calyxos\.gitlab\.io\/calyx-fdroid-repo.*/,
      /linkedin\.com/,
      'https://f-droid.org/packages/com.dragons.aurora',
      'https://calyx.net',
      'https://gitlab.com/calyxos/bitmask_android/issues',
      'https://f-droid.org/packages/info.guardianproject.otr.app.im'
    ],
    cache: {
      timeframe: '30d'
    }
    #hydra: {
    #  max_concurrency: 3
    #}
  }
  HTMLProofer.check_directory(directory, options).run
end
