summon minecraft:marker 683 103 10 {Tags:["choice"]}
summon minecraft:marker 674 102 5 {Tags:["choice"]}
summon minecraft:marker 674 102 15 {Tags:["choice"]}
summon minecraft:marker 682 102 16 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]