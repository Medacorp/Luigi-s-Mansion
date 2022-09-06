summon minecraft:marker 664 23 46 {Tags:["choice"]}
summon minecraft:marker 666 23 42 {Tags:["choice"]}
summon minecraft:marker 666 22 40 {Tags:["choice"]}
summon minecraft:marker 662 23 45 {Tags:["choice"]}
summon minecraft:marker 662 23 43 {Tags:["choice"]}
summon minecraft:marker 664 20 44 {Tags:["choice"]}
summon minecraft:marker 662 20 40 {Tags:["choice"]}
summon minecraft:marker 662 20 37 {Tags:["choice"]}
summon minecraft:marker 662 21 44 {Tags:["choice"]}
summon minecraft:marker 661 21 40 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]