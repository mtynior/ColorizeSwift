//#!cat ../Source/ColorizeSwift.swift main.swift | swift -

//
//  main.swift
//  Colorize
//
//  Created by Michał Tynior on 07/01/16.
//  Copyright © 2016 Michał Tynior. All rights reserved.
//

func printStyles() {
    print("Normal")
    print("Bold".bold())
    print("Dim".dim())
    print("Italic".italic())
    print("Underline".underline())
    print("Blink".blink())
    print("Reverse".reverse())
    print("Hidden".hidden())
    print("strikethrough".strikethrough())
    print("Red".red())
    print("On yellow".onYellow())
    print("256 foreground".foregroundColor(.orange1))
    print("226 background".backgroundColor(.orange1))
    print("Awful combination".colorize(.yellow, background: .red))
    
    let nested = "with a blue, underline substring".blue().underline()
    print("A bold, green line \(nested) that becomes bold and green again".green().bold())
}

func printF1() {
    let car1 = TerminalColor.green.foregroundStyleCode().open
    let car2 = TerminalColor.red.foregroundStyleCode().open
    let car3 = TerminalColor.mediumPurple.foregroundStyleCode().open
    let car4 = TerminalColor.yellow1.foregroundStyleCode().open
    
    print("\n\n")
    print("██  ██  ██  ██  ██  ██  ██  ██  ██  ██".white())
    print("  ██  ██  ██  ██  ██  ██  ██  ██  ██  ".white())
    
    print("\n\n")
    print(car1 + "      ▄▄           " )
    print(car1 + "   ██▬██▬██        " + car2 + "      ▄▄      ")
    print(car1 + "     ████          " + car2 + "   ██▬██▬██   ")
    print(car1 + "   ▄██  ██▄        " + car2 + "     ████     ")
    print(car1 + " ▄▄▄▀█  █▀▄▄▄      " + car2 + "   ▄██  ██▄   ")
    print(car1 + " ███▀████▀███      " + car2 + " ▄▄▄▀█  █▀▄▄▄ ")
    print(car1 + "     ▀  ▀          " + car2 + " ███▀████▀███ ")
    print(car1 + "                   " + car2 + "     ▀  ▀     ")
    print(car1 + "\n\n")
    print(car3 + "      ▄▄           " )
    print(car3 + "   ██▬██▬██        " + car4 + "      ▄▄      ")
    print(car3 + "     ████          " + car4 + "   ██▬██▬██   ")
    print(car3 + "   ▄██  ██▄        " + car4 + "     ████     ")
    print(car3 + " ▄▄▄▀█  █▀▄▄▄      " + car4 + "   ▄██  ██▄   ")
    print(car3 + " ███▀████▀███      " + car4 + " ▄▄▄▀█  █▀▄▄▄ ")
    print(car3 + "     ▀  ▀          " + car4 + " ███▀████▀███ ")
    print(car3 + "                   " + car4 + "     ▀  ▀     ")
    print("\n\n")
}

func printPacman() {
    // inspired by https://github.com/jaykru/colorscripts
    
    let pacmanColor = TerminalColor.yellow.foregroundStyleCode().open
    let blinkyColor = TerminalColor.red.foregroundStyleCode().open
    let pinkyColor = TerminalColor.pink1.foregroundStyleCode().open
    let inkyColor = TerminalColor.blue.foregroundStyleCode().open
    let clydeColor = TerminalColor.gold1.foregroundStyleCode().open
    let white = TerminalColor.white.foregroundStyleCode().open
    
    print("\n\n")
    print("\(pacmanColor)  ▄███████▄       \(blinkyColor)  ▄██████▄       \(pinkyColor)  ▄██████▄       \(inkyColor)  ▄██████▄       \(clydeColor)  ▄██████▄  ")
    print("\(pacmanColor)▄█████████▀▀      \(blinkyColor)▄\(white)█▀█\(blinkyColor)██\(white)█▀█\(blinkyColor)██▄     \(pinkyColor)▄\(white)█▀█\(pinkyColor)██\(white)█▀█\(pinkyColor)██▄     \(inkyColor)▄\(white)█▀█\(inkyColor)██\(white)█▀█\(inkyColor)██▄     \(clydeColor)▄\(white)█▀█\(clydeColor)██\(white)█▀█\(clydeColor)██▄")
    print("\(pacmanColor)███████▀          \(blinkyColor)█\(white)▄▄█\(blinkyColor)██\(white)▄▄█\(blinkyColor)███     \(pinkyColor)█\(white)▄▄█\(pinkyColor)██\(white)▄▄█\(pinkyColor)███     \(inkyColor)█\(white)▄▄█\(inkyColor)██\(white)▄▄█\(inkyColor)███     \(clydeColor)█\(white)▄▄█\(clydeColor)██\(white)▄▄█\(clydeColor)███")
    print("\(pacmanColor)███████▄          \(blinkyColor)████████████     \(pinkyColor)████████████     \(inkyColor)████████████     \(clydeColor)████████████")
    print("\(pacmanColor)▀█████████▄▄      \(blinkyColor)██▀██▀▀██▀██     \(pinkyColor)██▀██▀▀██▀██     \(inkyColor)██▀██▀▀██▀██     \(clydeColor)██▀██▀▀██▀██")
    print("\(pacmanColor)  ▀███████▀       \(blinkyColor)▀   ▀  ▀   ▀     \(pinkyColor)▀   ▀  ▀   ▀     \(inkyColor)▀   ▀  ▀   ▀     \(clydeColor)▀   ▀  ▀   ▀")
    print("\n\n")
}

func printMario() {
    let red = TerminalColor.red.foregroundStyleCode().open
    let brown = TerminalColor.darkRed.foregroundStyleCode().open
    let skin = TerminalColor.sandyBrown.foregroundStyleCode().open
    let eye = TerminalColor.black.foregroundStyleCode().open
    let trousers = TerminalColor.deepSkyBlue4_2.foregroundStyleCode().open
    let button = TerminalColor.yellow.foregroundStyleCode().open
    
    print("\n\n")
    print("\(red)    █████    ")
    print("\(red)   █████████ ")
    print("\(brown)   ███\(skin)██\(eye)█\(skin)█   ")
    print("\(brown)  █\(skin)█\(brown)█\(skin)███\(eye)█\(skin)███ ")
    print("\(brown)  █\(skin)█\(brown)██\(skin)████\(brown)█\(skin)██")
    print("\(brown)  ██\(skin)████\(brown)████ ")
    print("\(skin)     ██████  ")
    print("\(red)    ██\(trousers)█\(red)███    ")
    print("\(red)   ███\(trousers)█\(red)██\(trousers)█\(red)███ ")
    print("\(red)  ████\(trousers)████\(red)████")
    print("\(skin)  ██\(red)█\(trousers)█\(button)█\(trousers)██\(button)█\(trousers)█\(red)█\(skin)██")
    print("\(skin)  ███\(trousers)██████\(skin)███")
    print("\(skin)  ██\(trousers)████████\(skin)██")
    print("\(trousers)    ███  ███  ")
    print("\(brown)   ███    ███ ")
    print("\(brown)  ████    ████")
    print("\n\n")
}

func printInfo() {
    print("Available examples:\n")
    print("   styles    Print available styles.")
    print("   f1        Print F1 cars.")
    print("   pacman    Print Pacman")
    print("   mario     Print Mario")
    print("\n")
}

if CommandLine.arguments.count != 2 {
    printInfo()
}
else {
    let argument = CommandLine.arguments[1]

    switch (argument.lowercased()) {
        case "styles": printStyles()
        case "f1": printF1()
        case "pacman": printPacman()
        case "mario": printMario()
        default:
            print("Unrecognized command `\(argument)`.")
            printInfo()
    }
}
