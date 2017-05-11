f :: Int -> Int
f x = if x == 0 then 0 else f (x-1);

main = f 0;

