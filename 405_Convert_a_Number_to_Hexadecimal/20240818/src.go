func toHex(num int) string {
    to_hex_map := map[int]string{
        0: "0",
        1: "1",
        2: "2",
        3: "3",
        4: "4",
        5: "5",
        6: "6",
        7: "7",
        8: "8",
        9: "9",
        10: "a",
        11: "b",
        12: "c",
        13: "d",
        14: "e",
        15: "f",
    }

    if num < 0 {
        num += int(math.Pow(2, 32))
    }

    result := ""
    for {
        result = to_hex_map[num % 16] + result
        if num < 16 {
            break
        }
        num /= 16
    }
    return result
}
