# 1683. Invalid Tweets

## Intuition

1. `content`の文字数を取得
2. 比較演算子で`content`の文字数が指定より多いか確認

## Approach

- `CHAR_LENGTH`で文字数を取得
  - 言語によって文字数の取得方法は異なる
    - <https://www.sql-reference.com/string/char_length.html>
- `> 15`で15文字より多い`content`を持つレコードを検索

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```SQL
SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) > 15;
```
