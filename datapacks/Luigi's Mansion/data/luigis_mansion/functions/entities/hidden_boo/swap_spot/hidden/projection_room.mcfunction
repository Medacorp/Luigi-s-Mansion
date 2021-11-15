summon minecraft:marker 685 12 -23 {Tags:["choice"]}
summon minecraft:marker 676 11 -28 {Tags:["choice"]}
summon minecraft:marker 676 11 -18 {Tags:["choice"]}
summon minecraft:marker 684 11 -17 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]