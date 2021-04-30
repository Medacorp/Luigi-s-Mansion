summon minecraft:marker 666 113 -17 {Tags:["choice"]}
summon minecraft:marker 670 114 -17 {Tags:["choice"]}
summon minecraft:marker 670 113 -15 {Tags:["choice"]}
summon minecraft:marker 666 114 -20 {Tags:["choice"]}
summon minecraft:marker 666 114 -18 {Tags:["choice"]}
summon minecraft:marker 668 111 -19 {Tags:["choice"]}
summon minecraft:marker 666 111 -15 {Tags:["choice"]}
summon minecraft:marker 666 111 -12 {Tags:["choice"]}
summon minecraft:marker 666 114 -12 {Tags:["choice"]}
summon minecraft:marker 665 112 -15 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]