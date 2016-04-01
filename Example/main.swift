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
    print("256 foreground".foregroundColor(.Orange1))
    print("226 background".backgroundColor(.Orange1))
    print("Awful combination".colorize(.Yellow, background: .Red))
    
    let nested = "with a blue, underline substring".blue().underline()
    print("A bold, green line \(nested) that becomes bold and green again".green().bold())
}

func printF1() {
    
    let car1 = TerminalColor.Green.foregroundStyleCode().open
    let car2 = TerminalColor.Red.foregroundStyleCode().open
    let car3 = TerminalColor.MediumPurple.foregroundStyleCode().open
    let car4 = TerminalColor.Yellow1.foregroundStyleCode().open
    
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
    
    let pacmanColor = TerminalColor.Yellow.foregroundStyleCode().open
    let blinkyColor = TerminalColor.Red.foregroundStyleCode().open
    let pinkyColor = TerminalColor.Pink1.foregroundStyleCode().open
    let inkyColor = TerminalColor.Blue.foregroundStyleCode().open
    let clydeColor = TerminalColor.Gold1.foregroundStyleCode().open
    let white = TerminalColor.White.foregroundStyleCode().open
    
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
    
    let red = TerminalColor.Red.foregroundStyleCode().open
    let brown = TerminalColor.DarkRed.foregroundStyleCode().open
    let skin = TerminalColor.SandyBrown.foregroundStyleCode().open
    let eye = TerminalColor.Black.foregroundStyleCode().open
    let trousers = TerminalColor.DeepSkyBlue4_2.foregroundStyleCode().open
    let button = TerminalColor.Yellow.foregroundStyleCode().open
    
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

if Process.arguments.count != 2 {
    printInfo()
}
else {
    let argument = Process.arguments[1]

    switch (argument.lowercaseString) {
        case "styles": printStyles()
        case "f1": printF1()
        case "pacman": printPacman()
        case "mario": printMario()
        default:
            print("Unrecognized command `\(argument)`.")
            printInfo()
    }

}