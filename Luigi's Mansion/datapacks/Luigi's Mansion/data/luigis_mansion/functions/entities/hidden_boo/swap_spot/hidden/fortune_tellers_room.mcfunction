summon minecraft:marker 736 11 37 {Tags:["choice"]}
summon minecraft:marker 736 11 52 {Tags:["choice"]}
summon minecraft:marker 746 11 36 {Tags:["choice"]}
summon minecraft:marker 746 11 52 {Tags:["choice"]}
summon minecraft:marker 744 11 39 {Tags:["choice"]}
summon minecraft:marker 744 11 49 {Tags:["choice"]}
summon minecraft:marker 739 11 44 {Tags:["choice"]}
summon minecraft:marker 742 11 44 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]