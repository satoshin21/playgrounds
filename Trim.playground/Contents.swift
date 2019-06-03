import UIKit

let str = """
{
    "key": "value value",
    "integer": 1,
    "null": null
}
"""

let trimmed = str.replacingOccurrences(of: "\n", with: "")
let trimmed2 = trimmed.trimmingCharacters(in: .whitespaces)

let str2 = """
foo
    hoge
bar
"""

// "\\s"
let regex = "\\s(?=([^\"]*\"[^\"]*\")*[^\"]*$)"
str.replacingOccurrences(of: regex, with: "", options: .regularExpression, range: nil)
