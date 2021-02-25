# BerlinClock View

A componement view of Berlin Clock

The Berlin Clock (Mengenlehreclock or Berlin Uhr) is a clock that tells the time using a series of illuminated coloured blocks, as you can see in the picture for this project.

The top lamp blinks to show seconds- it is illuminated on even seconds and off on odd seconds.

The next two rows represent hours. The upper row represents 5 hour blocks and is made up of 4 red lamps. The lower row represents 1 hour blocks and is also made up of 4 red lamps.

The final two rows represent the minutes. The upper row represents 5 minute blocks, and is made up of 11 lamps- every third lamp is red, the rest are yellow. The bottom row represents 1 minute blocks, and is made up of 4 yellow lamps.

## Requirements
* iOS 10.0+ 
* Xcode 11+
* Swift 4.2+

## Installation

### CocoaPods

To integrate BerlinClock into your Xcode project using CocoaPods, you need to specify in your Podfile his private Pod-Specs repository:

```
source 'https://github.com/devios-ux/CocoaPods-Specs.git'</code> 

... 

pod 'BerlinClock'
```

In your ViewController, import the framework :
```swift
import BerlinClock
```
After that, declare the data member of your ViewController like :

```swift
var berlinClockView: BerlinClockView!
```

In the viewDidLoad method of your ViewController, add these two instructions after the super.viewDidLoad() :
```swift
self.berlinClockView = BerlinClockView()
self.view.addSubview(self.berlinClockView)
```

That's it ! 
