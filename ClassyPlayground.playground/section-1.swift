// Playground - noun: a place where people can play

//import Cocoa


// To subclass place the ':' and the class your subclassing. It is not necessary to Subclass.
//1
class TipCalculator {
    let total: Double = 0.0
    let taxPct: Double = 0.0
    let subTotal: Double = 0.0
    
    //Initializers are always name init(). Self prefix distingueses between paramaters and the properties of the class.
    init(total:Double, taxPct:Double) {
        self.total = total
        self.taxPct = taxPct
        subTotal = total / (taxPct + 1) // there is no conflict with subtotal so the complier infers it already.
    }
    
    // func + method name + method parameters () + method return type ->
    func calcTipsWithTipPct(tipPct:Double) -> Double {
        return subTotal * tipPct
    }
    
    func printPossibleTips() {
        println("15%: \(calcTipsWithTipPct(0.15))")
        println("18%: \(calcTipsWithTipPct(0.18))")
        println("20%: \(calcTipsWithTipPct(0.20))")
    }
    
    //array of doubles. [Double] is short for Array<Double>
    func printPossibleTipsArrays() {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit: [Double] = [0.15, 0.18, 0.20]
        for possibleTip in possibleTipsInferred {
            println("\(possibleTip*100)%: \(calcTipsWithTipPct(possibleTip))")
        }
        /* Alternative loop ..< non-inclusive operator. .. inclusive operator.
            Arrays also have a count property for how many elements they contain.
            arrayName[index] allows access to individual items int the array.
        for i in 0..<possibleTipsInferred.count {
            let possibleTip = possibleTipsInferred[i]
            println("\(possibleTip*100)%: \(calcTipsWithTipPct(possibleTip))")
        */
    }
    
    func returnPossibleTips() -> [Int: Double] {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18,0.20]
        
        // Key is an INT, and the value is the double, calculated tip. [Int: Double] is a shortcut for Dictionary<Int, Double>
        // If declared with let there would be a compile error. Declare with var if not to be instantiated straight away.
        var retval = Dictionary<Int, Double>()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            retval[intPct] = calcTipsWithTipPct(possibleTip)
        }
        return retval
    }
}

let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.printPossibleTipsArrays()
tipCalc.returnPossibleTips()


