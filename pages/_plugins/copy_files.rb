#
# Copy some files to be included in the final static render,
# even though they are not jekyll content pages.
#
Jekyll::Hooks.register :site, :post_write do |site|
  FILES = [
    {
      src: '_data/downloads.yml',
      dst: 'data/downloads.yml'
    }
  ]
  home      = File.expand_path('../../..', __FILE__)
  dst_base  = File.join(home, Jekyll.configuration({})['destination'])
  src_base  = File.join(home, Jekyll.configuration({})['source'])
  FILES.each do |file|
    src = File.join(src_base, file[:src])
    dst = File.join(dst_base, file[:dst])
    FileUtils.mkdir_p(File.dirname(dst))
    FileUtils.cp(src, dst)
  end
end
