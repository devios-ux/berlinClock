Pod::Spec.new do |spec|
  spec.name             = 'BerlinClock'
  spec.version          = '1.0.3'

  spec.platform         = :ios, '10.0'

  spec.license          = { :type => 'BSD' }
  spec.homepage         = 'https://github.com/devios-ux/berlinClock'
  spec.authors          = { 'exercice berlin' => 'devios' }
  spec.summary          = 'Berlin Clock View for iOS and macOS.'
  spec.description	    = 'Berlin Clock UIView for iOS and MacOs.'
  spec.source           = { :git => 'https://github.com/devios-ux/berlinClock.git', :tag => spec.version.to_s }
  spec.source_files     =  'Models/*', 'Views/*'
  #spec.framework        = 'SystemConfiguration'
  #spec.requires_arc     = true
  
  spec.swift_version = '4.2'
  spec.ios.deployment_target = '10.0'

  
end
