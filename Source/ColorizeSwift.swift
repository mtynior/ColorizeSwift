//
//  ColorizeSwift.swift
//  ColorizeSwift
//
//  Created by Michał Tynior on 31/03/16.
//  Copyright © 2016 Michal Tynior. All rights reserved.
//

import Foundation

public typealias TerminalStyleCode = (open: String, close: String)

public struct TerminalStyle {
    
    public static let bold: TerminalStyleCode            = ("\u{001B}[1m", "\u{001B}[22m")
    public static let dim: TerminalStyleCode             = ("\u{001B}[2m", "\u{001B}[22m")
    public static let italic: TerminalStyleCode          = ("\u{001B}[3m", "\u{001B}[23m")
    public static let underline: TerminalStyleCode       = ("\u{001B}[4m", "\u{001B}[24m")
    public static let blink: TerminalStyleCode           = ("\u{001B}[5m", "\u{001B}[25m")
    public static let reverse: TerminalStyleCode         = ("\u{001B}[7m", "\u{001B}[27m")
    public static let hidden: TerminalStyleCode          = ("\u{001B}[8m", "\u{001B}[28m")
    public static let strikethrough: TerminalStyleCode   = ("\u{001B}[9m", "\u{001B}[29m")
    public static let reset: TerminalStyleCode           = ("\u{001B}[0m", "")
   
    public static let black: TerminalStyleCode           = ("\u{001B}[30m", "\u{001B}[0m")
    public static let red: TerminalStyleCode             = ("\u{001B}[31m", "\u{001B}[0m")
    public static let green: TerminalStyleCode           = ("\u{001B}[32m", "\u{001B}[0m")
    public static let yellow: TerminalStyleCode          = ("\u{001B}[33m", "\u{001B}[0m")
    public static let blue: TerminalStyleCode            = ("\u{001B}[34m", "\u{001B}[0m")
    public static let magenta: TerminalStyleCode         = ("\u{001B}[35m", "\u{001B}[0m")
    public static let cyan: TerminalStyleCode            = ("\u{001B}[36m", "\u{001B}[0m")
    public static let lightGray: TerminalStyleCode       = ("\u{001B}[37m", "\u{001B}[0m")
    public static let darkGray: TerminalStyleCode        = ("\u{001B}[90m", "\u{001B}[0m")
    public static let lightRed: TerminalStyleCode        = ("\u{001B}[91m", "\u{001B}[0m")
    public static let lightGreen: TerminalStyleCode      = ("\u{001B}[92m", "\u{001B}[0m")
    public static let lightYellow: TerminalStyleCode     = ("\u{001B}[93m", "\u{001B}[0m")
    public static let lightBlue: TerminalStyleCode       = ("\u{001B}[94m", "\u{001B}[0m")
    public static let lightMagenta: TerminalStyleCode    = ("\u{001B}[95m", "\u{001B}[0m")
    public static let lightCyan: TerminalStyleCode       = ("\u{001B}[96m", "\u{001B}[0m")
    public static let white: TerminalStyleCode           = ("\u{001B}[97m", "\u{001B}[0m")
    
    public static let onBlack: TerminalStyleCode         = ("\u{001B}[40m", "\u{001B}[0m")
    public static let onRed: TerminalStyleCode           = ("\u{001B}[41m", "\u{001B}[0m")
    public static let onGreen: TerminalStyleCode         = ("\u{001B}[42m", "\u{001B}[0m")
    public static let onYellow: TerminalStyleCode        = ("\u{001B}[43m", "\u{001B}[0m")
    public static let onBlue: TerminalStyleCode          = ("\u{001B}[44m", "\u{001B}[0m")
    public static let onMagenta: TerminalStyleCode       = ("\u{001B}[45m", "\u{001B}[0m")
    public static let onCyan: TerminalStyleCode          = ("\u{001B}[46m", "\u{001B}[0m")
    public static let onLightGray: TerminalStyleCode     = ("\u{001B}[47m", "\u{001B}[0m")
    public static let onDarkGray: TerminalStyleCode      = ("\u{001B}[100m", "\u{001B}[0m")
    public static let onLightRed: TerminalStyleCode      = ("\u{001B}[101m", "\u{001B}[0m")
    public static let onLightGreen: TerminalStyleCode    = ("\u{001B}[102m", "\u{001B}[0m")
    public static let onLightYellow: TerminalStyleCode   = ("\u{001B}[103m", "\u{001B}[0m")
    public static let onLightBlue: TerminalStyleCode     = ("\u{001B}[104m", "\u{001B}[0m")
    public static let onLightMagenta: TerminalStyleCode  = ("\u{001B}[105m", "\u{001B}[0m")
    public static let onLightCyan: TerminalStyleCode     = ("\u{001B}[106m", "\u{001B}[0m")
    public static let onWhite: TerminalStyleCode         = ("\u{001B}[107m", "\u{001B}[0m")
    
}

extension String {
    
    public func bold() -> String {
        return applyStyle(TerminalStyle.bold)
    }
    
    public func dim() -> String {
        return applyStyle(TerminalStyle.dim)
    }
    
    public func italic() -> String {
        return applyStyle(TerminalStyle.italic)
    }
    
    public func underline() -> String {
        return applyStyle(TerminalStyle.underline)
    }
    
    public func blink() -> String {
        return applyStyle(TerminalStyle.blink)
    }
    
    public func reverse() -> String {
        return applyStyle(TerminalStyle.reverse)
    }
    
    public func hidden() -> String {
        return applyStyle(TerminalStyle.hidden)
    }
    
    public func strikethrough() -> String {
        return applyStyle(TerminalStyle.strikethrough)
    }
    
    public func reset() -> String {
        return  "\u{001B}[0m" + self
    }
    
    public func foregroundColor(color: TerminalColor) -> String {
        return applyStyle(color.foregroundStyleCode())
    }
    
    public func backgroundColor(color: TerminalColor) -> String {
        return applyStyle(color.backgroundStyleCode())
    }
    
    public func colorize(foreground: TerminalColor, background: TerminalColor) -> String{
        return applyStyle(foreground.foregroundStyleCode()).applyStyle(background.backgroundStyleCode())
    }
    
    private func applyStyle(codeStyle: TerminalStyleCode) -> String {
        let str = self.stringByReplacingOccurrencesOfString(TerminalStyle.reset.open, withString: TerminalStyle.reset.open + codeStyle.open)
        
        return codeStyle.open + str + TerminalStyle.reset.open
    }
    
}

extension String {
    
    public func black() -> String {
        return applyStyle(TerminalStyle.black)
    }
    
    public func red() -> String {
        return applyStyle(TerminalStyle.red)
    }
    
    public func green() -> String {
        return applyStyle(TerminalStyle.green)
    }
    
    public func yellow() -> String {
        return applyStyle(TerminalStyle.yellow)
    }
    
    public func blue() -> String {
        return applyStyle(TerminalStyle.blue)
    }
    
    public func magenta() -> String {
        return applyStyle(TerminalStyle.magenta)
    }
    
    public func cyan() -> String {
        return applyStyle(TerminalStyle.cyan)
    }
    
    public func lightGray() -> String {
        return applyStyle(TerminalStyle.lightGray)
    }
    
    public func darkGray() -> String {
        return applyStyle(TerminalStyle.darkGray)
    }
    
    public func lightRed() -> String {
        return applyStyle(TerminalStyle.lightRed)
    }
    
    public func lightGreen() -> String {
        return applyStyle(TerminalStyle.lightGreen)
    }
    
    public func lightYellow() -> String {
        return applyStyle(TerminalStyle.lightYellow)
    }
    
    public func lightBlue() -> String {
        return applyStyle(TerminalStyle.lightBlue)
    }
    
    public func lightMagenta() -> String {
        return applyStyle(TerminalStyle.lightMagenta)
    }
    
    public func lightCyan() -> String {
        return applyStyle(TerminalStyle.lightCyan)
    }
    
    public func white() -> String {
        return applyStyle(TerminalStyle.white)
    }
    
    public func onBlack() -> String {
        return applyStyle(TerminalStyle.onBlack)
    }
    
    public func onRed() -> String {
        return applyStyle(TerminalStyle.onRed)
    }
    
    public func onGreen() -> String {
        return applyStyle(TerminalStyle.onGreen)
    }
    
    public func onYellow() -> String {
        return applyStyle(TerminalStyle.onYellow)
    }
    
    public func onBlue() -> String {
        return applyStyle(TerminalStyle.onBlue)
    }
    
    public func onMagenta() -> String {
        return applyStyle(TerminalStyle.onMagenta)
    }
    
    public func onCyan() -> String {
        return applyStyle(TerminalStyle.onCyan)
    }
    
    public func onLightGray() -> String {
        return applyStyle(TerminalStyle.onLightGray)
    }
    
    public func onDarkGray() -> String {
        return applyStyle(TerminalStyle.onDarkGray)
    }
    
    public func onLightRed() -> String {
        return applyStyle(TerminalStyle.onLightRed)
    }
    
    public func onLightGreen() -> String {
        return applyStyle(TerminalStyle.onLightGreen)
    }
    
    public func onLightYellow() -> String {
        return applyStyle(TerminalStyle.onLightYellow)
    }
    
    public func onLightBlue() -> String {
        return applyStyle(TerminalStyle.onLightBlue)
    }
    
    public func onLightMagenta() -> String {
        return applyStyle(TerminalStyle.onLightMagenta)
    }
    
    public func onLightCyan() -> String {
        return applyStyle(TerminalStyle.onLightCyan)
    }
    
    public func onWhite() -> String {
        return applyStyle(TerminalStyle.onWhite)
    }
}

// https://jonasjacek.github.io/colors/

public enum TerminalColor: UInt8 {
    case Black = 0
    case Maroon
    case Green
    case Olive
    case Navy
    case Purple
    case Teal
    case Silver
    case Grey
    case Red
    case Lime
    case Yellow
    case Blue
    case Fuchsia
    case Aqua
    case White
    case Grey0
    case NavyBlue
    case DarkBlue
    case Blue3
    case Blue3_2
    case Blue1
    case DarkGreen
    case DeepSkyBlue4
    case DeepSkyBlue4_2
    case DeepSkyBlue4_3
    case DodgerBlue3
    case DodgerBlue2
    case Green4
    case SpringGreen4
    case Turquoise4
    case DeepSkyBlue3
    case DeepSkyBlue3_2
    case DodgerBlue1
    case Green3
    case SpringGreen3
    case DarkCyan
    case LightSeaGreen
    case DeepSkyBlue2
    case DeepSkyBlue1
    case Green3_2
    case SpringGreen3_2
    case SpringGreen2
    case Cyan3
    case DarkTurquoise
    case Turquoise2
    case Green1
    case SpringGreen2_2
    case SpringGreen1
    case MediumSpringGreen
    case Cyan2
    case Cyan1
    case DarkRed
    case DeepPink4
    case Purple4
    case Purple4_2
    case Purple3
    case BlueViolet
    case Orange4
    case Grey37
    case MediumPurple4
    case SlateBlue3
    case SlateBlue3_2
    case RoyalBlue1
    case Chartreuse4
    case DarkSeaGreen4
    case PaleTurquoise4
    case SteelBlue
    case SteelBlue3
    case CornflowerBlue
    case Chartreuse3
    case DarkSeaGreen4_2
    case CadetBlue
    case CadetBlue_2
    case SkyBlue3
    case SteelBlue1
    case Chartreuse3_2
    case PaleGreen3
    case SeaGreen3
    case Aquamarine3
    case MediumTurquoise
    case SteelBlue1_2
    case Chartreuse2
    case SeaGreen2
    case SeaGreen1
    case SeaGreen1_2
    case Aquamarine1
    case DarkSlateGray2
    case DarkRed_2
    case DeepPink4_2
    case DarkMagenta
    case DarkMagenta_2
    case DarkViolet
    case Purple_2
    case Orange4_2
    case LightPink4
    case Plum4
    case MediumPurple3
    case MediumPurple3_2
    case SlateBlue1
    case Yellow4
    case Wheat4
    case Grey53
    case LightSlateGrey
    case MediumPurple
    case LightSlateBlue
    case Yellow4_2
    case DarkOliveGreen3
    case DarkSeaGreen
    case LightSkyBlue3
    case LightSkyBlue3_2
    case SkyBlue2
    case Chartreuse2_2
    case DarkOliveGreen3_2
    case PaleGreen3_2
    case DarkSeaGreen3
    case DarkSlateGray3
    case SkyBlue1
    case Chartreuse1
    case LightGreen
    case LightGreen_2
    case PaleGreen1
    case Aquamarine1_2
    case DarkSlateGray1
    case Red3
    case DeepPink4_3
    case MediumVioletRed
    case Magenta3
    case DarkViolet_2
    case Purple_3
    case DarkOrange3
    case IndianRed
    case HotPink3
    case MediumOrchid3
    case MediumOrchid
    case MediumPurple2
    case DarkGoldenrod
    case LightSalmon3
    case RosyBrown
    case Grey63
    case MediumPurple2_2
    case MediumPurple1
    case Gold3
    case DarkKhaki
    case NavajoWhite3
    case Grey69
    case LightSteelBlue3
    case LightSteelBlue
    case Yellow3
    case DarkOliveGreen3_3
    case DarkSeaGreen3_2
    case DarkSeaGreen2
    case LightCyan3
    case LightSkyBlue1
    case GreenYellow
    case DarkOliveGreen2
    case PaleGreen1_2
    case DarkSeaGreen2_2
    case DarkSeaGreen1
    case PaleTurquoise1
    case Red3_2
    case DeepPink3
    case DeepPink3_2
    case Magenta3_2
    case Magenta3_3
    case Magenta2
    case DarkOrange3_2
    case IndianRed_2
    case HotPink3_2
    case HotPink2
    case Orchid
    case MediumOrchid1
    case Orange3
    case LightSalmon3_2
    case LightPink3
    case Pink3
    case Plum3
    case Violet
    case Gold3_2
    case LightGoldenrod3
    case Tan
    case MistyRose3
    case Thistle3
    case Plum2
    case Yellow3_2
    case Khaki3
    case LightGoldenrod2
    case LightYellow3
    case Grey84
    case LightSteelBlue1
    case Yellow2
    case DarkOliveGreen1
    case DarkOliveGreen1_2
    case DarkSeaGreen1_2
    case Honeydew2
    case LightCyan1
    case Red1
    case DeepPink2
    case DeepPink1
    case DeepPink1_2
    case Magenta2_2
    case Magenta1
    case OrangeRed1
    case IndianRed1
    case IndianRed1_2
    case HotPink
    case HotPink_2
    case MediumOrchid1_2
    case DarkOrange
    case Salmon1
    case LightCoral
    case PaleVioletRed1
    case Orchid2
    case Orchid1
    case Orange1
    case SandyBrown
    case LightSalmon1
    case LightPink1
    case Pink1
    case Plum1
    case Gold1
    case LightGoldenrod2_2
    case LightGoldenrod2_3
    case NavajoWhite1
    case MistyRose1
    case Thistle1
    case Yellow1
    case LightGoldenrod1
    case Khaki1
    case Wheat1
    case Cornsilk1
    case Grey100
    case Grey3
    case Grey7
    case Grey11
    case Grey15
    case Grey19
    case Grey23
    case Grey27
    case Grey30
    case Grey35
    case Grey39
    case Grey42
    case Grey46
    case Grey50
    case Grey54
    case Grey58
    case Grey62
    case Grey66
    case Grey70
    case Grey74
    case Grey78
    case Grey82
    case Grey85
    case Grey89
    case Grey93
    
    public func foregroundStyleCode() -> TerminalStyleCode {
        return ("\u{001B}[38;5;\(self.rawValue)m", TerminalStyle.reset.open)
    }
    
    public func backgroundStyleCode() -> TerminalStyleCode {
        return ("\u{001B}[48;5;\(self.rawValue)m", TerminalStyle.reset.open)
    }
}
