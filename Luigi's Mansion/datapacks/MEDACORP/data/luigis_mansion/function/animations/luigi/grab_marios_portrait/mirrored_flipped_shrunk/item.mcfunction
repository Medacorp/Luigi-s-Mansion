scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..25}] positioned ^0.1825 ^ ^ positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=26}] positioned ^0.1825 ^ ^ rotated ~ ~5 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=27}] positioned ^0.1825 ^ ^ rotated ~ ~10 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=28}] positioned ^0.1825 ^ ^ rotated ~ ~15 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=29}] positioned ^0.1825 ^ ^ rotated ~ ~20 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=30..40}] positioned ^0.1825 ^ ^ rotated ~ ~25 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=41}] positioned ^0.1825 ^ ^ rotated ~ ~20 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=42}] positioned ^0.1825 ^ ^ rotated ~ ~15 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=43}] positioned ^0.1825 ^ ^ rotated ~ ~10 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=44}] positioned ^0.1825 ^ ^ rotated ~ ~5 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=45}] positioned ^0.1825 ^ ^ positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=46}] positioned ^0.1825 ^ ^ rotated ~ ~-5 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=47}] positioned ^0.1825 ^ ^ rotated ~ ~-10 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=48}] positioned ^0.1825 ^ ^ rotated ~ ~-15 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=49}] positioned ^0.1825 ^ ^ rotated ~ ~-20 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=50..60}] positioned ^0.1825 ^ ^ rotated ~ ~-25 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=61}] positioned ^0.1825 ^ ^ rotated ~ ~-20 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=62}] positioned ^0.1825 ^ ^ rotated ~ ~-15 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=63}] positioned ^0.1825 ^ ^ rotated ~ ~-10 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=64}] positioned ^0.1825 ^ ^ rotated ~ ~-5 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=65}] positioned ^0.1825 ^ ^ positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=66}] positioned ^0.1825 ^ ^ rotated ~ ~5 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=67}] positioned ^0.1825 ^ ^ rotated ~ ~10 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=68}] positioned ^0.1825 ^ ^ rotated ~ ~15 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=69}] positioned ^0.1825 ^ ^ rotated ~ ~20 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=70}] positioned ^0.1825 ^ ^ rotated ~ ~25 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=71}] positioned ^0.1825 ^ ^ rotated ~ ~30 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=72}] positioned ^0.1825 ^ ^ rotated ~ ~35 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=73}] positioned ^0.1825 ^ ^ rotated ~ ~40 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=74}] positioned ^0.1825 ^ ^ rotated ~ ~45 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=75}] positioned ^0.1825 ^ ^ rotated ~ ~50 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=76}] positioned ^0.1825 ^ ^ rotated ~ ~55 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=77}] positioned ^0.1825 ^ ^ rotated ~ ~60 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=78}] positioned ^0.1825 ^ ^ rotated ~ ~65 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=79}] positioned ^0.1825 ^ ^ rotated ~ ~70 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=80..}] positioned ^0.1825 ^ ^ rotated ~ ~75 positioned ^ ^ ^0.37 run teleport @s ~ ~-0.3 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -1800
scoreboard players set @s[scores={AnimationProgress=41}] AnimationRotationY 0
data modify entity @s[scores={AnimationProgress=1..}] item set value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/marios_portrait","minecraft:custom_model_data":{flags:[1b,1b]}}}
scoreboard players set @s[scores={AnimationProgress=120}] AnimationProgress 0