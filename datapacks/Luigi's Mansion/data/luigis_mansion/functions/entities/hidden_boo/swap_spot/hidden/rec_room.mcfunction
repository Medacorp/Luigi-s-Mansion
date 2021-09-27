summon minecraft:marker 641 14 56 {Tags:["choice"]}
summon minecraft:marker 645 14 56 {Tags:["choice"]}
summon minecraft:marker 641 14 75 {Tags:["choice"]}
summon minecraft:marker 645 14 75 {Tags:["choice"]}
summon minecraft:marker 639 12 50 {Tags:["choice"]}
summon minecraft:marker 643 11 74 {Tags:["choice"]}
summon minecraft:marker 645 11 73 {Tags:["choice"]}
summon minecraft:marker 639 11 58 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]