require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))


Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source = { :git => "file://#{__dir__}"}
  s.source_files  = "src/ios/*.{h,m}", "src/common/*.{h,c}"

  s.dependency 'React'
end