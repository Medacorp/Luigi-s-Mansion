summon minecraft:marker 661 20 -27 {Tags:["choice"]}
summon minecraft:marker 659 20 -12 {Tags:["choice"]}
summon minecraft:marker 659 20 -18 {Tags:["choice"]}
summon minecraft:marker 658 20 -23 {Tags:["choice"]}
summon minecraft:marker 662 20 -4 {Tags:["choice"]}
summon minecraft:marker 656 20 -18 {Tags:["choice"]}
summon minecraft:marker 655 20 -26 {Tags:["choice"]}
summon minecraft:marker 661 22 -3 {Tags:["choice"]}
summon minecraft:marker 654 22 -15 {Tags:["choice"]}
summon minecraft:marker 654 24 -15 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]