summon minecraft:marker 661 20 42 {Tags:["choice"]}
summon minecraft:marker 659 20 27 {Tags:["choice"]}
summon minecraft:marker 659 20 33 {Tags:["choice"]}
summon minecraft:marker 658 20 38 {Tags:["choice"]}
summon minecraft:marker 662 20 19 {Tags:["choice"]}
summon minecraft:marker 656 20 33 {Tags:["choice"]}
summon minecraft:marker 655 20 41 {Tags:["choice"]}
summon minecraft:marker 661 22 18 {Tags:["choice"]}
summon minecraft:marker 654 22 30 {Tags:["choice"]}
summon minecraft:marker 654 24 30 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]