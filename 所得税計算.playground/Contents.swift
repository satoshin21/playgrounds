
/*:
 日本における所得税・住民税を給与から計算します。
 計算方法が誤っている間違っている場合は指摘してもらえると助かります・・🙇‍♂️


 ---

 ## 給与

 * 給料と賞与、及び手当も含まれる
 * ただし交通費は含まれない

 ### 課税所得計算方法

 * 所得 = 給与 - 給与所得控除
 * 課税所得 = 所得 - 所得控除

 ### 所得税計算方法

 * 所得税額 = 課税所得 * 税率(累進税率) - 控除額

 ### 住民税計算方法

 * 住民税額 = 課税所得 * 10％
 */

let 所得控除: Double = {

    let 基礎控除 = 38

    // TODO: 社会保険料控除などを追加

    return Double(基礎控除)
}()

func 課税所得計算(給与: Double) -> Double {

    // https://www.nta.go.jp/m/taxanswer/1410.htm
    let 給与所得控除: Double = {
        switch 給与 {
        case ..<65:
            return 65
        case ...180:
            return 給与 * 0.4
        case ...360:
            return (給与 * 0.3) + 18
        case ...660:
            return (給与 * 0.2) + 54
        case ...1000:
            return (給与 * 0.1) + 120
        default:
            return 220
        }
    }()

    let 所得 = 給与 - 給与所得控除
    return 所得 - 所得控除
}

// https://www.nta.go.jp/taxes/shiraberu/taxanswer/shotoku/2260.htm
func 所得税率計算(課税所得: Double) -> Double {

    switch 課税所得 {
    case ...195:
        return 0.05
    case ...330:
        return 0.10
    case ...695:
        return 0.20
    case ...900:
        return 0.23
    case ...1800:
        return 0.33
    case ...4000:
        return 0.40
    default:
        return 0.45
    }
}

func 所得税控除額計算(課税所得: Double) -> Double {
    switch 課税所得 {
    case ...195:
        return 0
    case ...330:
        return   9.7500
    case ...695:
        return  42.7500
    case ...900:
        return  63.6000
    case ...1800:
        return 153.6000
    case ...4000:
        return 279.6000
    default:
        return 479.6000
    }
}

//: 給与一覧。100万〜2000万の10万刻み
let 給与リスト = stride(from: 100, to: 2000, by: 10)

func 所得税・住民税計算(給与: Double) -> (所得税: Double, 住民税: Double) {

    // 所得控除は基礎控除のみ
    let 課税所得 = 課税所得計算(給与: 給与)

    let 所得税率 = 所得税率計算(課税所得: 課税所得)
    let 所得税控除額 = 所得税控除額計算(課税所得: 課税所得)

    let 所得税 = ((課税所得 * 所得税率) - 所得税控除額).rounded()
    let 住民税 = (課税所得 * 0.1).rounded()
    return (所得税, 住民税)
}

for 給与 in 給与リスト.compactMap(Double.init) {

    let res = 所得税・住民税計算(給与: 給与)

    let 割合 = (res.所得税 + res.住民税) / 給与

    print("給与:\(給与)万に対し、所得税約\(res.所得税)万、 住民税約\(res.住民税)万 約\(割合 * 100)％")
}

//let res = 所得税・住民税計算(給与: 700)
//res.所得税
