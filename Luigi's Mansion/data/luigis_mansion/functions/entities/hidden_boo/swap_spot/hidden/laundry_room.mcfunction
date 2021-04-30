summon minecraft:marker 700 105 -38 {Tags:["choice"]}
summon minecraft:marker 700 102 -36 {Tags:["choice"]}
summon minecraft:marker 700 102 -33 {Tags:["choice"]}
summon minecraft:marker 700 102 -27 {Tags:["choice"]}
summon minecraft:marker 700 102 -25 {Tags:["choice"]}
summon minecraft:marker 700 102 -26 {Tags:["choice"]}
summon minecraft:marker 700 105 -26 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]