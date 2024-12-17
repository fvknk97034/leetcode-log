function lemonadeChange(bills: number[]): boolean {
  const cashier = {
    5: 0,
    10: 0,
    20: 0
  }

  for (const bill of bills) {
    cashier[bill] += 1

    if (bill == 5) continue

    // bill >= 10
    if (cashier[5] == 0) return false

    if (bill == 10) {
      cashier[5] -= 1
      continue
    }

    // bill == 20
    if (cashier[5] < 3 && cashier[10] == 0) return false

    if (cashier[10] > 0) {
      cashier[10] -= 1
      cashier[5] -= 1

      continue
    }

    if (cashier[5] < 3) return false
    else cashier[5] -= 3
  }

  return true
};
