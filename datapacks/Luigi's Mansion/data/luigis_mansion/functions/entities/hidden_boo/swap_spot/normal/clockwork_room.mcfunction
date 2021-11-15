summon minecraft:marker 693 120 19 {Tags:["choice"]}
summon minecraft:marker 696 120 18 {Tags:["choice"]}
summon minecraft:marker 694 120 16 {Tags:["choice"]}
summon minecraft:marker 694 120 -1 {Tags:["choice"]}
summon minecraft:marker 692 120 -3 {Tags:["choice"]}
summon minecraft:marker 688 122 22 {Tags:["choice"]}
summon minecraft:marker 688 122 -7 {Tags:["choice"]}
summon minecraft:marker 684 120 22 {Tags:["choice"]}
summon minecraft:marker 694 120 18 {Tags:["choice"]}
summon minecraft:marker 694 120 -3 {Tags:["choice"]}
summon minecraft:marker 684 120 -7 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]