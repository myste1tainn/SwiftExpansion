Pod::Spec.new do |s|
  s.name             = 'SwiftExpansion'
  s.version          = '0.2.3'
  s.summary          = 'Various extension for swift foundation'
  s.description      = <<-DESC
  Swift Foundation is a powerful framework, but in itself is somewhat lacking in describing certain scenario
  making the framework inextensible by adopter without having to write addtional protocol locally.
  This library contains such protocol for immediate uses and other extension functions for easy uses.
                       DESC
  s.homepage         = 'https://github.com/myste1tainn/SwiftExpansion'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'myste1tainn' => 'a.keereena@gmail.com' }
  s.source           = { :git => 'https://github.com/myste1tainn/SwiftExpansion.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.swift_version = '4.2'
  s.source_files = 'Sources/SwiftExpansion/**/*'
end
