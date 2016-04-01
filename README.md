![ColorizeSwift](Assets/logo.png)

[![Swift 2.2](https://img.shields.io/badge/language-Swift-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/mtynior/ColorizeSwift/blob/master/LICENSE.md) 
[![CocoaPods](https://img.shields.io/cocoapods/v/ColorizeSwift.svg)](https://cocoapods.org/pods/ColorizeSwift)
[![Carthage](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Terminal string styling for Swift.

## Requirements

- iOS 9.0+ / Mac OS X 10.10+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 7.3+

## Integration

#### CocoaPods
You can use [CocoaPods](http://cocoapods.org/) to install `ColorizeSwift` by adding it to your `Podfile`:

```ruby
platform :ios, '9.0'
use_frameworks!

target 'MyApp' do
	pod 'ColorizeSwift'
end
```
Run `pods install` to intagrate pods with your project.

#### Carthage
You can use [Carthage](https://github.com/Carthage/Carthage) to install `ColorizeSwift ` by adding it to your `Cartfile`:

```
github "mtynior/ColorizeSwift"
```
Run `carthage update` to build the framework and drag the built `ColorizeSwift.framework` into your Xcode project.

#### Swift Package Managers (SPM)
You can use The [Swift Package Manager](https://swift.org/package-manager/) to install ColorizeSwift by adding it to your Package.swift file:

```swift
import PackageDescription

let package = Package(
    name: "MyApp",
    targets: [],
    dependencies: [
        .Package(url: "https://github.com/mtynior/ColorizeSwift.git", versions: "1.0.0" ..< Version.max)
    ]
)
```

#### Manually
You can also manually add ColorizeSwift to you project:

1. Download `ColorizeSwift.swift` file,
2. Drag `ColorizeSwift.swift` into you project's tree.

## Example
You can run sample application:

1. Open Terminal and go to Example folder.
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
print("256 foreground".foregroundColor(.Orange1))
print("226 background".backgroundColor(.Orange1))
print("Awful combination".colorize(.Yellow, background: .Red))
    
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

You can access 256 colors by `TerminalColor` enumeration.

<table>
  <thead>
    <tr><th>Color</th><th>Name</th></tr>
  </thead>
  <tbody>
    <tr><td style="background:#000000"></td><td>Black</td></tr>
    <tr><td style="background:#800000"></td><td>Maroon</td></tr>
    <tr><td style="background:#008000"></td><td>Green</td></tr>
    <tr><td style="background:#808000"></td><td>Olive</td></tr>
    <tr><td style="background:#000080"></td><td>Navy</td></tr>
    <tr><td style="background:#800080"></td><td>Purple</td></tr>
    <tr><td style="background:#008080"></td><td>Teal</td></tr>
    <tr><td style="background:#c0c0c0"></td><td>Silver</td></tr>
    <tr><td style="background:#808080"></td><td>Grey</td></tr>
    <tr><td style="background:#ff0000"></td><td>Red</td></tr>
    <tr><td style="background:#00ff00"></td><td>Lime</td></tr>
    <tr><td style="background:#ffff00"></td><td>Yellow</td></tr>
    <tr><td style="background:#0000ff"></td><td>Blue</td></tr>
    <tr><td style="background:#ff00ff"></td><td>Fuchsia</td></tr>
    <tr><td style="background:#00ffff"></td><td>Aqua</td></tr>
    <tr><td style="background:#ffffff"></td><td>White</td></tr>
    <tr><td style="background:#000000"></td><td>Grey0</td></tr>
    <tr><td style="background:#00005f"></td><td>NavyBlue</td></tr>
    <tr><td style="background:#000087"></td><td>DarkBlue</td></tr>
    <tr><td style="background:#0000af"></td><td>Blue3</td></tr>
    <tr><td style="background:#0000d7"></td><td>Blue3_2</td></tr>
    <tr><td style="background:#0000ff"></td><td>Blue1</td></tr>
    <tr><td style="background:#005f00"></td><td>DarkGreen</td></tr>
    <tr><td style="background:#005f5f"></td><td>DeepSkyBlue4</td></tr>
    <tr><td style="background:#005f87"></td><td>DeepSkyBlue4_2</td></tr>
    <tr><td style="background:#005faf"></td><td>DeepSkyBlue4_3</td></tr>
    <tr><td style="background:#005fd7"></td><td>DodgerBlue3</td></tr>
    <tr><td style="background:#005fff"></td><td>DodgerBlue2</td></tr>
    <tr><td style="background:#008700"></td><td>Green4</td></tr>
    <tr><td style="background:#00875f"></td><td>SpringGreen4</td></tr>
    <tr><td style="background:#008787"></td><td>Turquoise4</td></tr>
    <tr><td style="background:#0087af"></td><td>DeepSkyBlue3</td></tr>
    <tr><td style="background:#0087d7"></td><td>DeepSkyBlue3_2</td></tr>
    <tr><td style="background:#0087ff"></td><td>DodgerBlue1</td></tr>
    <tr><td style="background:#00af00"></td><td>Green3_2</td></tr>
    <tr><td style="background:#00af5f"></td><td>SpringGreen3_2</td></tr>
    <tr><td style="background:#00af87"></td><td>DarkCyan</td></tr>
    <tr><td style="background:#00afaf"></td><td>LightSeaGreen</td></tr>
    <tr><td style="background:#00afd7"></td><td>DeepSkyBlue2</td></tr>
    <tr><td style="background:#00afff"></td><td>DeepSkyBlue1</td></tr>
    <tr><td style="background:#00d700"></td><td>Green3</td></tr>
    <tr><td style="background:#00d75f"></td><td>SpringGreen3</td></tr>
    <tr><td style="background:#00d787"></td><td>SpringGreen2</td></tr>
    <tr><td style="background:#00d7af"></td><td>Cyan3</td></tr>
    <tr><td style="background:#00d7d7"></td><td>DarkTurquoise</td></tr>
    <tr><td style="background:#00d7ff"></td><td>Turquoise2</td></tr>
    <tr><td style="background:#00ff00"></td><td>Green1</td></tr>
    <tr><td style="background:#00ff5f"></td><td>SpringGreen2_2</td></tr>
    <tr><td style="background:#00ff87"></td><td>SpringGreen1</td></tr>
    <tr><td style="background:#00ffaf"></td><td>MediumSpringGreen</td></tr>
    <tr><td style="background:#00ffd7"></td><td>Cyan2</td></tr>
    <tr><td style="background:#00ffff"></td><td>Cyan1</td></tr>
    <tr><td style="background:#5f0000"></td><td>DarkRed</td></tr>
    <tr><td style="background:#5f005f"></td><td>DeepPink4</td></tr>
    <tr><td style="background:#5f0087"></td><td>Purple4</td></tr>
    <tr><td style="background:#5f00af"></td><td>Purple4</td></tr>
    <tr><td style="background:#5f00d7"></td><td>Purple3</td></tr>
    <tr><td style="background:#5f00ff"></td><td>BlueViolet</td></tr>
    <tr><td style="background:#5f5f00"></td><td>Orange4</td></tr>
    <tr><td style="background:#5f5f5f"></td><td>Grey37</td></tr>
    <tr><td style="background:#5f5f87"></td><td>MediumPurple4</td></tr>
    <tr><td style="background:#5f5faf"></td><td>SlateBlue3</td></tr>
    <tr><td style="background:#5f5fd7"></td><td>SlateBlue3_2</td></tr>
    <tr><td style="background:#5f5fff"></td><td>RoyalBlue1</td></tr>
    <tr><td style="background:#5f8700"></td><td>Chartreuse4</td></tr>
    <tr><td style="background:#5f875f"></td><td>DarkSeaGreen4</td></tr>
    <tr><td style="background:#5f8787"></td><td>PaleTurquoise4</td></tr>
    <tr><td style="background:#5f87af"></td><td>SteelBlue</td></tr>
    <tr><td style="background:#5f87d7"></td><td>SteelBlue3</td></tr>
    <tr><td style="background:#5f87ff"></td><td>CornflowerBlue</td></tr>
    <tr><td style="background:#5faf00"></td><td>Chartreuse3</td></tr>
    <tr><td style="background:#5faf5f"></td><td>DarkSeaGreen4_2</td></tr>
    <tr><td style="background:#5faf87"></td><td>CadetBlue</td></tr>
    <tr><td style="background:#5fafaf"></td><td>CadetBlue_2</td></tr>
    <tr><td style="background:#5fafd7"></td><td>SkyBlue3</td></tr>
    <tr><td style="background:#5fafff"></td><td>SteelBlue1</td></tr>
    <tr><td style="background:#5fd700"></td><td>Chartreuse3</td></tr>
    <tr><td style="background:#5fd75f"></td><td>PaleGreen3</td></tr>
    <tr><td style="background:#5fd787"></td><td>SeaGreen3</td></tr>
    <tr><td style="background:#5fd7af"></td><td>Aquamarine3</td></tr>
    <tr><td style="background:#5fd7d7"></td><td>MediumTurquoise</td></tr>
    <tr><td style="background:#5fd7ff"></td><td>SteelBlue1_2</td></tr>
    <tr><td style="background:#5fff00"></td><td>Chartreuse2</td></tr>
    <tr><td style="background:#5fff5f"></td><td>SeaGreen2</td></tr>
    <tr><td style="background:#5fff87"></td><td>SeaGreen1</td></tr>
    <tr><td style="background:#5fffaf"></td><td>SeaGreen1_2</td></tr>
    <tr><td style="background:#5fffd7"></td><td>Aquamarine1</td></tr>
    <tr><td style="background:#5fffff"></td><td>DarkSlateGray2</td></tr>
    <tr><td style="background:#870000"></td><td>DarkRed_2</td></tr>
    <tr><td style="background:#87005f"></td><td>DeepPink4_2</td></tr>
    <tr><td style="background:#870087"></td><td>DarkMagenta</td></tr>
    <tr><td style="background:#8700af"></td><td>DarkMagenta_2</td></tr>
    <tr><td style="background:#8700d7"></td><td>DarkViolet</td></tr>
    <tr><td style="background:#8700ff"></td><td>Purple_2</td></tr>
    <tr><td style="background:#875f00"></td><td>Orange4_2</td></tr>
    <tr><td style="background:#875f5f"></td><td>LightPink4</td></tr>
    <tr><td style="background:#875f87"></td><td>Plum4</td></tr>
    <tr><td style="background:#875faf"></td><td>MediumPurple3</td></tr>
    <tr><td style="background:#875fd7"></td><td>MediumPurple3_2</td></tr>
    <tr><td style="background:#875fff"></td><td>SlateBlue1</td></tr>
    <tr><td style="background:#878700"></td><td>Yellow4</td></tr>
    <tr><td style="background:#87875f"></td><td>Wheat4</td></tr>
    <tr><td style="background:#878787"></td><td>Grey53</td></tr>
    <tr><td style="background:#8787af"></td><td>LightSlateGrey</td></tr>
    <tr><td style="background:#8787d7"></td><td>MediumPurple</td></tr>
    <tr><td style="background:#8787ff"></td><td>LightSlateBlue</td></tr>
    <tr><td style="background:#87af00"></td><td>Yellow4_2</td></tr>
    <tr><td style="background:#87af5f"></td><td>DarkOliveGreen3</td></tr>
    <tr><td style="background:#87af87"></td><td>DarkSeaGreen</td></tr>
    <tr><td style="background:#87afaf"></td><td>LightSkyBlue3</td></tr>
    <tr><td style="background:#87afd7"></td><td>LightSkyBlue3_2</td></tr>
    <tr><td style="background:#87afff"></td><td>SkyBlue2</td></tr>
    <tr><td style="background:#87d700"></td><td>Chartreuse2_2</t></tr>
    <tr><td style="background:#87d75f"></td><td>DarkOliveGreen3_2</td></tr>
    <tr><td style="background:#87d787"></td><td>PaleGreen3_2</td></tr>
    <tr><td style="background:#87d7af"></td><td>DarkSeaGreen3</td></tr>
    <tr><td style="background:#87d7d7"></td><td>DarkSlateGray3</td></tr>
    <tr><td style="background:#87d7ff"></td><td>SkyBlue1</td></tr>
    <tr><td style="background:#87ff00"></td><td>Chartreuse1</td></tr>
    <tr><td style="background:#87ff5f"></td><td>LightGreen</td></tr>
    <tr><td style="background:#87ff87"></td><td>LightGreen_2</td></tr>
    <tr><td style="background:#87ffaf"></td><td>PaleGreen1</td></tr>
    <tr><td style="background:#87ffd7"></td><td>Aquamarine1_2</td></tr>
    <tr><td style="background:#87ffff"></td><td>DarkSlateGray1</td></tr>
    <tr><td style="background:#af0000"></td><td>Red3</td></tr>
    <tr><td style="background:#af005f"></td><td>DeepPink4_3</td></tr>
    <tr><td style="background:#af0087"></td><td>MediumVioletRed</td></tr>
    <tr><td style="background:#af00af"></td><td>Magenta3</td></tr>
    <tr><td style="background:#af00d7"></td><td>DarkViolet_2</td></tr>
    <tr><td style="background:#af00ff"></td><td>Purple_3</td></tr>
    <tr><td style="background:#af5f00"></td><td>DarkOrange3</td></tr>
    <tr><td style="background:#af5f5f"></td><td>IndianRed</td></tr>
    <tr><td style="background:#af5f87"></td><td>HotPink3</td></tr>
    <tr><td style="background:#af5faf"></td><td>MediumOrchid3</td></tr>
    <tr><td style="background:#af5fd7"></td><td>MediumOrchid</td></tr>
    <tr><td style="background:#af5fff"></td><td>MediumPurple2</td></tr>
    <tr><td style="background:#af8700"></td><td>DarkGoldenrod</td></tr>
    <tr><td style="background:#af875f"></td><td>LightSalmon3</td></tr>
    <tr><td style="background:#af8787"></td><td>RosyBrown</td></tr>
    <tr><td style="background:#af87af"></td><td>Grey63</td></tr>
    <tr><td style="background:#af87d7"></td><td>MediumPurple2_2</td></tr>
    <tr><td style="background:#af87ff"></td><td>MediumPurple1</td></tr>
    <tr><td style="background:#afaf00"></td><td>Gold3</td></tr>
    <tr><td style="background:#afaf5f"></td><td>DarkKhaki</td></tr>
    <tr><td style="background:#afaf87"></td><td>NavajoWhite3</td></tr>
    <tr><td style="background:#afafaf"></td><td>Grey69</td></tr>
    <tr><td style="background:#afafd7"></td><td>LightSteelBlue3</td></tr>
    <tr><td style="background:#afafff"></td><td>LightSteelBlue</td></tr>
    <tr><td style="background:#afd700"></td><td>Yellow3</td></tr>
    <tr><td style="background:#afd75f"></td><td>DarkOliveGreen3_3</td></tr>
    <tr><td style="background:#afd787"></td><td>DarkSeaGreen3_2</td></tr>
    <tr><td style="background:#afd7af"></td><td>DarkSeaGreen2</td></tr>
    <tr><td style="background:#afd7d7"></td><td>LightCyan3</td></tr>
    <tr><td style="background:#afd7ff"></td><td>LightSkyBlue1</td></tr>
    <tr><td style="background:#afff00"></td><td>GreenYellow</td></tr>
    <tr><td style="background:#afff5f"></td><td>DarkOliveGreen2</td></tr>
    <tr><td style="background:#afff87"></td><td>PaleGreen1_2</td></tr>
    <tr><td style="background:#afffaf"></td><td>DarkSeaGreen2_2</td></tr>
    <tr><td style="background:#afffd7"></td><td>DarkSeaGreen1</td></tr>
    <tr><td style="background:#afffff"></td><td>PaleTurquoise1</td></tr>
    <tr><td style="background:#d70000"></td><td>Red3_2</td></tr>
    <tr><td style="background:#d7005f"></td><td>DeepPink3</td></tr>
    <tr><td style="background:#d70087"></td><td>DeepPink3_2</td></tr>
    <tr><td style="background:#d700af"></td><td>Magenta3_2</td></tr>
    <tr><td style="background:#d700d7"></td><td>Magenta3_3</td></tr>
    <tr><td style="background:#d700ff"></td><td>Magenta2</td></tr>
    <tr><td style="background:#d75f00"></td><td>DarkOrange3_2</td></tr>
    <tr><td style="background:#d75f5f"></td><td>IndianRed_2</td></tr>
    <tr><td style="background:#d75f87"></td><td>HotPink3_2</td></tr>
    <tr><td style="background:#d75faf"></td><td>HotPink2</td></tr>
    <tr><td style="background:#d75fd7"></td><td>Orchid</td></tr>
    <tr><td style="background:#d75fff"></td><td>MediumOrchid1</td></tr>
    <tr><td style="background:#d78700"></td><td>Orange3</td></tr>
    <tr><td style="background:#d7875f"></td><td>LightSalmon3_2</td></tr>
    <tr><td style="background:#d78787"></td><td>LightPink3</td></tr>
    <tr><td style="background:#d787af"></td><td>Pink3</td></tr>
    <tr><td style="background:#d787d7"></td><td>Plum3</td></tr>
    <tr><td style="background:#d787ff"></td><td>Violet</td></tr>
    <tr><td style="background:#d7af00"></td><td>Gold3_2</td></tr>
    <tr><td style="background:#d7af5f"></td><td>LightGoldenrod3</td></tr>
    <tr><td style="background:#d7af87"></td><td>Tan</td></tr>
    <tr><td style="background:#d7afaf"></td><td>MistyRose3</td></tr>
    <tr><td style="background:#d7afd7"></td><td>Thistle3</td></tr>
    <tr><td style="background:#d7afff"></td><td>Plum2</td></tr>
    <tr><td style="background:#d7d700"></td><td>Yellow3_2</td></tr>
    <tr><td style="background:#d7d75f"></td><td>Khaki3</td></tr>
    <tr><td style="background:#d7d787"></td><td>LightGoldenrod2</td></tr>
    <tr><td style="background:#d7d7af"></td><td>LightYellow3</td></tr>
    <tr><td style="background:#d7d7d7"></td><td>Grey84</td></tr>
    <tr><td style="background:#d7d7ff"></td><td>LightSteelBlue1</td></tr>
    <tr><td style="background:#d7ff00"></td><td>Yellow2</td></tr>
    <tr><td style="background:#d7ff5f"></td><td>DarkOliveGreen1</td></tr>
    <tr><td style="background:#d7ff87"></td><td>DarkOliveGreen1_2</td></tr>
    <tr><td style="background:#d7ffaf"></td><td>DarkSeaGreen1_2</td></tr>
    <tr><td style="background:#d7ffd7"></td><td>Honeydew2</td></tr>
    <tr><td style="background:#d7ffff"></td><td>LightCyan1</td></tr>
    <tr><td style="background:#ff0000"></td><td>Red1</td></tr>
    <tr><td style="background:#ff005f"></td><td>DeepPink2</td></tr>
    <tr><td style="background:#ff0087"></td><td>DeepPink1</td></tr>
    <tr><td style="background:#ff00af"></td><td>DeepPink1_2</td></tr>
    <tr><td style="background:#ff00d7"></td><td>Magenta2_2</td></tr>
    <tr><td style="background:#ff00ff"></td><td>Magenta1</td></tr>
    <tr><td style="background:#ff5f00"></td><td>OrangeRed1</td></tr>
    <tr><td style="background:#ff5f5f"></td><td>IndianRed1</td></tr>
    <tr><td style="background:#ff5f87"></td><td>IndianRed1_2</td></tr>
    <tr><td style="background:#ff5faf"></td><td>HotPink</td></tr>
    <tr><td style="background:#ff5fd7"></td><td>HotPink_2</td></tr>
    <tr><td style="background:#ff5fff"></td><td>MediumOrchid1_2</td></tr>
    <tr><td style="background:#ff8700"></td><td>DarkOrange</td></tr>
    <tr><td style="background:#ff875f"></td><td>Salmon1</td></tr>
    <tr><td style="background:#ff8787"></td><td>LightCoral</td></tr>
    <tr><td style="background:#ff87af"></td><td>PaleVioletRed1</td></tr>
    <tr><td style="background:#ff87d7"></td><td>Orchid2</td></tr>
    <tr><td style="background:#ff87ff"></td><td>Orchid1</td></tr>
    <tr><td style="background:#ffaf00"></td><td>Orange1</td></tr>
    <tr><td style="background:#ffaf5f"></td><td>SandyBrown</td></tr>
    <tr><td style="background:#ffaf87"></td><td>LightSalmon1</td></tr>
    <tr><td style="background:#ffafaf"></td><td>LightPink1</td></tr>
    <tr><td style="background:#ffafd7"></td><td>Pink1</td></tr>
    <tr><td style="background:#ffafff"></td><td>Plum1</td></tr>
    <tr><td style="background:#ffd700"></td><td>Gold1</td></tr>
    <tr><td style="background:#ffd75f"></td><td>LightGoldenrod2_2</td></tr>
    <tr><td style="background:#ffd787"></td><td>LightGoldenrod2_3</td></tr>
    <tr><td style="background:#ffd7af"></td><td>NavajoWhite1</td></tr>
    <tr><td style="background:#ffd7d7"></td><td>MistyRose1</td></tr>
    <tr><td style="background:#ffd7ff"></td><td>Thistle1</td></tr>
    <tr><td style="background:#ffff00"></td><td>Yellow1</td></tr>
    <tr><td style="background:#ffff5f"></td><td>LightGoldenrod1</td></tr>
    <tr><td style="background:#ffff87"></td><td>Khaki1</td></tr>
    <tr><td style="background:#ffffaf"></td><td>Wheat1</td></tr>
    <tr><td style="background:#ffffd7"></td><td>Cornsilk1</td></tr>
    <tr><td style="background:#ffffff"></td><td>Grey100</td></tr>
    <tr><td style="background:#080808"></td><td>Grey3</td></tr>
    <tr><td style="background:#121212"></td><td>Grey7</td></tr>
    <tr><td style="background:#1c1c1c"></td><td>Grey11</td></tr>
    <tr><td style="background:#262626"></td><td>Grey15</td></tr>
    <tr><td style="background:#303030"></td><td>Grey19</td></tr>
    <tr><td style="background:#3a3a3a"></td><td>Grey23</td></tr>
    <tr><td style="background:#444444"></td><td>Grey27</td></tr>
    <tr><td style="background:#4e4e4e"></td><td>Grey30</td></tr>
    <tr><td style="background:#585858"></td><td>Grey35</td></tr>
    <tr><td style="background:#626262"></td><td>Grey39</td></tr>
    <tr><td style="background:#6c6c6c"></td><td>Grey42</td></tr>
    <tr><td style="background:#767676"></td><td>Grey46</td></tr>
    <tr><td style="background:#808080"></td><td>Grey50</td></tr>
    <tr><td style="background:#8a8a8a"></td><td>Grey54</td></tr>
    <tr><td style="background:#949494"></td><td>Grey58</td></tr>
    <tr><td style="background:#9e9e9e"></td><td>Grey62</td></tr>
    <tr><td style="background:#a8a8a8"></td><td>Grey66</td></tr>
    <tr><td style="background:#b2b2b2"></td><td>Grey70</td></tr>
    <tr><td style="background:#bcbcbc"></td><td>Grey74</td></tr>
    <tr><td style="background:#c6c6c6"></td><td>Grey78</td></tr>
    <tr><td style="background:#d0d0d0"></td><td>Grey82</td></tr>
    <tr><td style="background:#dadada"></td><td>Grey85</td></tr>
    <tr><td style="background:#e4e4e4"></td><td>Grey89</td></tr>
    <tr><td style="background:#eeeeee"></td><td>Grey93</td></tr>
  </tbody>
</table>

## Escape codes
Sometimes you need only open code for a modifier. You can access them by `TerminalStyle` enum:

```swift
TerminalStyle.bold.open // "\u{001B}[1m"
TerminalStyle.bold.close  // "\u{001B}[22m"
```

For 256 colors use:

```swift
TerminalColor.Red.foregroundStyleCode().open \\"\u{001B}[38;5;9m"
TerminalColor.Red.backgroundStyleCode().open \\"\u{001B}[48;5;9m"
```

## License

ColorizeSwift is released under the MIT license. See LICENSE for details.