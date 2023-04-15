# 1757. Recyclable and Low Fat Products

## Intuition

1. outputが`product_id`カラムのみなので、カラムを絞り込む
2. Explanationに`low_fats`と`recyclable`なものとの条件があり、この2カラムは`('Y', 'N')`の文字列のため、2カラムに対して`'Y'`のものに絞り込む

## Approach

- 1. は`SELECT`節に`product_id`を指定して、カラムを抽出
- 2. は各カラムに対して`= 'Y'`で判定した結果を`AND`で結合することでどちらの条件も満たすレコードを抽出

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```SQL
SELECT product_id from Products
WHERE low_fats = 'Y' and recyclable = 'Y';
```
