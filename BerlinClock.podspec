Pod::Spec.new do |spec|
  spec.name             = 'BerlinClock'
  spec.version          = '1.0.0'
  spec.license          = { :type => 'BSD' }
  spec.homepage         = 'https://github.com/devios-ux/berlinClock'
  spec.authors          = { 'exercice berlin' => 'devios' }
  spec.summary          = 'Berlin Clock View for iOS and macOS.'
  spec.description	    = 'Berlin Clock UIView for iOS and MacOs.'
  spec.source           = { :git => 'https://github.com/devios-ux/berlinClock.git', :tag => '1.0.0' }
  spec.source_files     =  '.*swift' #'Models/*.swift, Views/*.swift'
  #spec.framework        = 'SystemConfiguration'
  spec.requires_arc     = true
end
