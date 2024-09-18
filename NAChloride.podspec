Pod::Spec.new do |s|

  s.name         = "NAChloride"
  s.version      = "2.3.1"
  s.summary      = "Objective-C library for libsodium (NaCl)"
  s.homepage     = "https://github.com/gabriel/NAChloride"
  s.license      = { :type => "MIT" }
  s.author       = { "Gabriel Handford" => "gabrielh@gmail.com" }
  s.source       = { :git => "https://github.com/gabriel/NAChloride.git", :tag => s.version.to_s }
  s.requires_arc = true
  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(SRCROOT)/include',
    'LIBRARY_SEARCH_PATHS' => '$(SRCROOT)/lib'
}

  s.ios.deployment_target = "15.0"
  s.ios.source_files = 'NAChloride/**/*.{c,h,m}'

end
