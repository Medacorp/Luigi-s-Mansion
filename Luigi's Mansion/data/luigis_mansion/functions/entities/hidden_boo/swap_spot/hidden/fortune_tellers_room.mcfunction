summon minecraft:marker 707 102 20 {Tags:["choice"]}
summon minecraft:marker 707 102 35 {Tags:["choice"]}
summon minecraft:marker 717 102 19 {Tags:["choice"]}
summon minecraft:marker 717 102 35 {Tags:["choice"]}
summon minecraft:marker 715 102 22 {Tags:["choice"]}
summon minecraft:marker 715 102 32 {Tags:["choice"]}
summon minecraft:marker 710 102 27 {Tags:["choice"]}
summon minecraft:marker 713 102 27 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]