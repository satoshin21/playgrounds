//: Playground - noun: a place where people can play

import Foundation
import UIKit
import PlaygroundSupport

var str = "Hello, playground"

let font = UIFont(name: "HiraKakuProN-W3", size: 12)!
//let font = UIFont.systemFont(ofSize: 12)
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
let trueLineHeight =
    abs(font.descender)
        + font.ascender
        + font.leading

let hogehoge = "hogehoge"

let view = UIView(frame: CGRect(x: 0, y: 0, width: 640, height: 300))
view.backgroundColor = .gray
let padding: CGFloat = 20

let textViewFrame = CGRect(
    x: padding,
    y: padding,
    width: view.frame.width - padding*2,
    height: view.frame.height - padding*2)
let textView = UITextView(
    frame: textViewFrame)
view.addSubview(textView)

let paragraphStyle = NSMutableParagraphStyle()
paragraphStyle.firstLineHeadIndent = 50
paragraphStyle.headIndent = 10

textView.attributedText = NSAttributedString(string: "あのイーハトーヴォのすきとおった風、夏でも底に冷たさをもつ青いそら、うつくしい森で飾られたモリーオ市、郊外のぎらぎらひかる草の波。", attributes: [.paragraphStyle: paragraphStyle])
//textView.text = "あのイーハトーヴォのすきとおった風、夏でも底に冷たさをもつ青いそら、うつくしい森で飾られたモリーオ市、郊外のぎらぎらひかる草の波。"
textView.textContainer
textView.textContainer.lineFragmentPadding = 20
textView.textContainerInset
textView.textContainerInset = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 10)

textView.font = UIFont.systemFont(ofSize: 40)
textView.textContainer.lineBreakMode = .byWordWrapping
textView.layoutManager.allowsNonContiguousLayout = true

textView.layoutManager.hasNonContiguousLayout



textView.backgroundColor = .white
//
//let textView2 = UITextView(frame: textViewFrame)
//view.addSubview(textView2)
//textView2.text = "foo"
////textView.textStorage.addLayoutManager(textView2.layoutManager)
//textView.text = "bar"
//
//textView2.text = "あのイーハトーヴォのすきとおった風、夏でも底に冷たさをもつ青いそら、うつくしい森で飾られたモリーオ市、郊外のぎらぎらひかる草の波。"


PlaygroundPage.current.liveView = view

let label = UILabel(frame: .init(origin: .zero, size: .init(width: 100, height: 50)))
label.numberOfLines = 2
label.backgroundColor = .white
label.lineBreakMode = .byWordWrapping
label.text = "こんにちは！"
PlaygroundPage.current.liveView = label
