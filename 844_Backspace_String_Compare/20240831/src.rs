use regex::Regex;

impl Solution {
    pub fn backspace_compare(s: String, t: String) -> bool {
        let replaced_s = Self::replace_with_hash_string(s);
        let replaced_t = Self::replace_with_hash_string(t);
        if replaced_s == replaced_t {
            return true
        }
        false
    }

    fn replace_with_hash_string(s: String) -> String {
        let re = Regex::new(r"^#|[a-z]#").unwrap();
        if re.find(&s) == None {
            return s
        }
        Self::replace_with_hash_string(re.replace_all(&s, "").to_string())
    }
}
