summon minecraft:marker 641 20 52 {Tags:["choice"]}
summon minecraft:marker 645 20 56 {Tags:["choice"]}
summon minecraft:marker 641 20 65 {Tags:["choice"]}
summon minecraft:marker 641 20 69 {Tags:["choice"]}
summon minecraft:marker 645 20 69 {Tags:["choice"]}
summon minecraft:marker 643 21 50 {Tags:["choice"]}
summon minecraft:marker 643 21 71 {Tags:["choice"]}
summon minecraft:marker 643 21 63 {Tags:["choice"]}
summon minecraft:marker 643 21 67 {Tags:["choice"]}
summon minecraft:marker 643 20 46 {Tags:["choice"]}
summon minecraft:marker 643 20 75 {Tags:["choice"]}
summon minecraft:marker 643 21 65 {Tags:["choice"]}
summon minecraft:marker 643 21 69 {Tags:["choice"]}
summon minecraft:marker 643 20 54 {Tags:["choice"]}
summon minecraft:marker 643 20 67 {Tags:["choice"]}
summon minecraft:marker 643 22 46 {Tags:["choice"]}
summon minecraft:marker 643 22 75 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]