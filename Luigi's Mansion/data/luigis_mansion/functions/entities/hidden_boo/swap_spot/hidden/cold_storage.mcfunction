summon minecraft:marker 702 93 27 {Tags:["choice"]}
summon minecraft:marker 703 93 28 {Tags:["choice"]}
summon minecraft:marker 713 93 15 {Tags:["choice"]}
summon minecraft:marker 715 93 16 {Tags:["choice"]}
summon minecraft:marker 712 95 14 {Tags:["choice"]}
summon minecraft:marker 700 95 21 {Tags:["choice"]}
summon minecraft:marker 703 93 17 {Tags:["choice"]}
summon minecraft:marker 715 93 25 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]