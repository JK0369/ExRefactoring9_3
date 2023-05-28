import UIKit

let isFinished = false
let isRetired = false
let isPaymented = false

func getCalculatedPayment() -> UInt {
    100
}

// refactor 전
func getPayment() -> UInt {
    if isFinished {
        return 0
    } else {
        if isRetired {
            return 1
        } else {
            if isPaymented {
                return 2
            } else {
                return getCalculatedPayment()
            }
        }
    }
}

// refactor 후 1
func getPayment_refactor1() -> UInt {
    if isFinished {
        return 0
    }
    if isRetired {
        return 1
    }
    if isPaymented {
        return 2
    }
    return getCalculatedPayment()
}

// refactor 후 2
func getPayment_refactor2() -> UInt {
    guard !isFinished else { return 0 }
    guard !isRetired else { return 1 }
    guard !isPaymented else { return 2 }
    return getCalculatedPayment()
}
