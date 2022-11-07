import UIKit

//小費計算
var 金額: Double = 5000
var 小費比: Double = 5
var 小費金額:Double = 小費比 / 100 * 金額
var 人數: Double = 5
var 總計: Double = 金額 + 小費金額
var 分攤: Double = 總計 / 人數
print(總計)
print(分攤)
