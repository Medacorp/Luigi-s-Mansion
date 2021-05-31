summon minecraft:marker 662 22 -27 {Tags:["choice"]}
summon minecraft:marker 666 23 -27 {Tags:["choice"]}
summon minecraft:marker 666 22 -25 {Tags:["choice"]}
summon minecraft:marker 662 23 -30 {Tags:["choice"]}
summon minecraft:marker 662 23 -28 {Tags:["choice"]}
summon minecraft:marker 664 20 -29 {Tags:["choice"]}
summon minecraft:marker 662 20 -25 {Tags:["choice"]}
summon minecraft:marker 662 20 -22 {Tags:["choice"]}
summon minecraft:marker 662 23 -22 {Tags:["choice"]}
summon minecraft:marker 663 21 -25 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]