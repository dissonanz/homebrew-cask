cask 'devonthink-pro-office' do
  version '2.8.9'
  sha256 '3fd65975ceed5abc3df0248d3c2b8c5df1979caf3c01b5cf41e5548b1de140c8'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro_Office.dmg.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300125739&format=xml',
          checkpoint: 'c0cfabbb0845d48e192c3170ca54d5ec57a6975c12e198e7c478bfb9c3db4c87'
  name 'DEVONthink Pro Office'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro-office.html'
  license :commercial

  depends_on macos: '>= :mountain_lion'
  container nested: 'DEVONthink_Pro_Office.dmg'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3838
  app 'DEVONthink Pro.app', target: 'DEVONthink Pro Office.app'
end
