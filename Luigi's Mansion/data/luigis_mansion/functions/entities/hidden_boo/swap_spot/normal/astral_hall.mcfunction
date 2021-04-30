summon minecraft:marker 662 20 -75 {Tags:["choice"]}
summon minecraft:marker 662 20 -89 {Tags:["choice"]}
summon minecraft:marker 665 20 -78 {Tags:["choice"]}
summon minecraft:marker 669 20 -80 {Tags:["choice"]}
summon minecraft:marker 662 20 -82 {Tags:["choice"]}
summon minecraft:marker 669 20 -84 {Tags:["choice"]}
summon minecraft:marker 665 20 -86 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]