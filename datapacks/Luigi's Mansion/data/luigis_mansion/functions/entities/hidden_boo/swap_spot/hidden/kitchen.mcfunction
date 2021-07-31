summon minecraft:marker 699 11 -50 {Tags:["choice"]}
summon minecraft:marker 700 11 -55 {Tags:["choice"]}
summon minecraft:marker 705 11 -74 {Tags:["choice"]}
summon minecraft:marker 700 11 -70 {Tags:["choice"]}
summon minecraft:marker 699 15 -73 {Tags:["choice"]}
summon minecraft:marker 699 14 -70 {Tags:["choice"]}
summon minecraft:marker 709 14 -68 {Tags:["choice"]}
summon minecraft:marker 709 14 -60 {Tags:["choice"]}
summon minecraft:marker 699 14 -60 {Tags:["choice"]}
summon minecraft:marker 709 14 -72 {Tags:["choice"]}
summon minecraft:marker 709 14 -74 {Tags:["choice"]}
summon minecraft:marker 709 14 -52 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]