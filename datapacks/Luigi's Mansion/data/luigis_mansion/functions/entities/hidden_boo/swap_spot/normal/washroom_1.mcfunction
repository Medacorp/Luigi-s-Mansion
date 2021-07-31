summon minecraft:marker 662 13 42 {Tags:["choice"]}
summon minecraft:marker 666 14 42 {Tags:["choice"]}
summon minecraft:marker 666 13 40 {Tags:["choice"]}
summon minecraft:marker 662 12 44 {Tags:["choice"]}
summon minecraft:marker 664 14 46 {Tags:["choice"]}
summon minecraft:marker 664 11 44 {Tags:["choice"]}
summon minecraft:marker 662 11 40 {Tags:["choice"]}
summon minecraft:marker 662 11 37 {Tags:["choice"]}
summon minecraft:marker 662 14 37 {Tags:["choice"]}
summon minecraft:marker 661 12 30 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]