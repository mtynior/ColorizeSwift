![ColorizeSwift](Assets/logo.png)

[![Swift](https://img.shields.io/badge/language-Swift-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/mtynior/ColorizeSwift/blob/master/LICENSE.md) 

Terminal string styling for Swift.

## Integration

#### Swift Package Manager (SPM)
You can use The [Swift Package Manager](https://swift.org/package-manager/) to install ColorizeSwift by adding it to your Package.swift file:

```swift
// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibrary",
    products: [
        .library(name: "MyLibrary", targets: ["MyLibrary"]),
    ],
    dependencies: [
         .package(url: "https://github.com/mtynior/ColorizeSwift.git", from: "1.5.0"),
    ],
    targets: [
        .target(name: "MyLibrary", dependencies: ["ColorizeSwift"]),
        .testTarget(name: "MyLibraryTests", dependencies: ["MyLibrary", "ColorizeSwift"]),
    ]
)
```

#### Manually
You can also manually add ColorizeSwift to you project:

1. Download `ColorizeSwift.swift` file,
2. Drag `ColorizeSwift.swift` into you project's tree.


#### CocoaPods

#### From version `1.5` ColorizeSwift does not support CocoaPods!
Please use SPM or add `ColorizeSwift.swift` file  manually to your project. 
If you use CocoaPods, you can still use version `1.2`.  **At the moment, latest version`1.5`, only removed support for CocoaPods and has the same functionality as `1.2`, but it might change in the future.** 

You can use [CocoaPods](http://cocoapods.org/) to install `ColorizeSwift` by adding it to your `Podfile`:

```ruby
platform :ios, '9.0'
use_frameworks!

target 'MyApp' do
	pod 'ColorizeSwift'
end
```
Run `pods install` to intagrate pods with your project.


## Example
You can run sample application:

1. Open Terminal and go to `Example` folder.
2. Run `./build.sh` script to build sample application.
3. Run `./example pacman` to launch sample.

Available samples:

1. `styles` - prints available styles 

	![Example - Styles](Assets/styles.png)

2. `f1` - prints F1 cars

	![Example - F1](Assets/f1.png)
	
3. `pacman` - prints Pacman

	![Example - Pacman](Assets/pacman.png)

4. `mario` - prints mario

	![Example - Mario](Assets/mario.png)

## Usage
```swift
print("Normal")
print("Bold".bold())
print("Dim".dim())
print("Italic".italic())
print("Underline".underline())
print("Blink".blink())
print("Reverse".reverse())
print("hidden".hidden())
print("strikethrough".strikethrough())
print("Red".red())
print("On yellow".onYellow())
print("256 foreground".foregroundColor(.orange1))
print("226 background".backgroundColor(.orange1))
print("Awful combination".colorize(.yellow, background: .red))
    
let nested = "with a blue substring".blue().underline()
print("A bold, green line \(nested) that becomes bold and green again".green().bold())
```

## Styles

### Modifiers

- `bold()`
- `dim()`
- `italic()` *(not widely supported)*
- `underline()`
- `reverse()`
- `hidden()`
- `strikethrough()` *(not widely supported)*
- `reset()`

### Foreground colors

- `black()`
- `red()`
- `green()`
- `yellow()`
- `blue()`
- `magenta()`
- `cyan()`
- `lightGray()`
- `darkGray()`
- `lightRed()`
- `lightGreen()`
- `lightYellow()`
- `lightBlue()`
- `lightMagenta()`
- `lightCyan()`
- `white()`

### Background colors

- `onBlack()`
- `onRed()`
- `onGreen()`
- `onYellow()`
- `onBlue()`
- `onMagenta()`
- `onCyan()`
- `onLightGray()`
- `onDarkGray()`
- `onLightRed()`
- `onLightGreen()`
- `onLightYellow()`
- `onLightBlue()`
- `onLightMagenta()`
- `onLightCyan()`
- `onWhite()`


## 256-colors
You can also use 256 colors, but keep in mind that not all Terminal clients support them.

- `foregroundColor(color: TerminalColor)`
- `backgroundColor(color: TerminalColor)`
- `colorize(foreground: TerminalColor, background: TerminalColor)`

#### Available colors

You can access 256 colors using `TerminalColor` enumeration.

![256 Colors](Assets/256Colors.png)

## Escape codes
Sometimes you only need the `open code` for a modifier. You can access them using `TerminalStyle` enum:

```swift
TerminalStyle.bold.open // "\u{001B}[1m"
TerminalStyle.bold.close  // "\u{001B}[22m"
```

For 256 colors use:

```swift
TerminalColor.red.foregroundStyleCode().open //"\u{001B}[38;5;9m"
TerminalColor.red.backgroundStyleCode().open //"\u{001B}[48;5;9m"
```

## Uncolorize

To get string without any colorization use `uncolorized()` method:
```swift
let styledString = "Awful combination".colorize(.yellow, background: .red) // \u{001B}[48;5;9m\u{001B}[38;5;11mAwful combination\u{001B}[0m\u{001B}[48;5;9m\u{001B}[0m
let withoutStyles = styledString.uncolorized() // "Awful combination"
```

## Disabling colorization

Colorization can be disabled globally:

```swift
String.isColorizationEnabled = false // Default: true
```

You can use this to support a command line option (`./example --no-color`):
```swift
String.isColorizationEnabled = !CommandLine.arguments.contains("--no-color")
```
To disable colorization when program is running in a pipe (`./example | wc`) or when not writing to `stdout` (`./example > output.txt`):
```swift
String.isColorizationEnabled = (isatty(fileno(stdout)) == 1)
```


## Credits

- [Mike Smiley](https://github.com/msmiley)
- [Theo Lubert](https://github.com/theo-lubert) 
- [Noah Bass](https://github.com/noahbass)
- [Hristo Staykov](https://github.com/hristost)

## License

ColorizeSwift is released under the MIT license. See LICENSE for details.
