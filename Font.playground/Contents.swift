//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let font = UIFont(name: "HiraKakuProN-W3", size: 12)!
//let font = UIFont.systemFont(ofSize: 12)
font.fontName   // TimesNewRomanPSMT
font.familyName // Times New Roman
font.pointSize  // 12.0

font.xHeight
font.capHeight
font.ascender
font.descender
font.leading
font.lineHeight
let lineHeight = abs(font.descender) + font.ascender
