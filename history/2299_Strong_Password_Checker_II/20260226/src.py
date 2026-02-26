class Solution:
    def strongPasswordCheckerII(self, password: str) -> bool:
        if len(password) < 8:
            return False

        has_lower = password[0].islower()
        has_upper = password[0].isupper()
        has_digit = password[0].isdigit()
        symbol = '!@#$%^&*()-+'
        has_symbol = password[0] in symbol
        for i in range(1, len(password)):
            p = password[i]
            if p == password[i - 1]:
                return False

            if has_lower and has_upper and has_digit and has_symbol:
                continue

            has_lower = has_lower or p.islower()
            has_upper = has_upper or p.isupper()
            has_digit = has_digit or p.isdigit()
            has_symbol = has_symbol or p in symbol

        return has_lower and has_upper and has_digit and has_symbol
