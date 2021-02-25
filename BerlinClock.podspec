Pod::Spec.new do |spec|
  spec.name             = 'BerlinClock'
  spec.version          = '1.0.0'

  spec.platform     = :ios, '10.0'
  spec.requires_arc = true

  spec.license          = { :type => 'BSD' }
  spec.homepage         = 'https://github.com/devios-ux/berlinClock'
  spec.authors          = { 'exercice berlin' => 'devios' }
  spec.summary          = 'Berlin Clock View for iOS and macOS.'
  spec.description	    = 'Berlin Clock UIView for iOS and MacOs.'
  spec.source           = { :git => 'https://github.com/devios-ux/berlinClock.git', :tag => '1.0.0' }
  spec.source_files     =  'Models/*' , 'Views/*'
  #spec.framework        = 'SystemConfiguration'
  spec.requires_arc     = true
  
  
end
