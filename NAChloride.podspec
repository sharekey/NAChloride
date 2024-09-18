Pod::Spec.new do |s|

  s.name         = "NAChloride"
  s.version      = "2.3.1"
  s.summary      = "Objective-C library for libsodium (NaCl)"
  s.homepage     = "https://github.com/gabriel/NAChloride"
  s.license      = { :type => "MIT" }
  s.author       = { "Gabriel Handford" => "gabrielh@gmail.com" }
  s.source       = { :git => "https://github.com/gabriel/NAChloride.git", :tag => s.version.to_s }
  s.requires_arc = true

  s.ios.deployment_target = "15.0"
  s.source_files = 'NAChloride/**/*.{c,h,m,mm,swift}'
  s.vendored_libraries = 'NAChloride/lib/libsodium.a'
  s.header_mappings_dir = 'NAChloride/include'
  s.public_header_files = 'NAChloride/include/**/*.h'

end
