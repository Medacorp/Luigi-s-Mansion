summon minecraft:marker 641 14 -31 {Tags:["choice"]}
summon minecraft:marker 645 14 -31 {Tags:["choice"]}
summon minecraft:marker 641 14 -60 {Tags:["choice"]}
summon minecraft:marker 645 14 -60 {Tags:["choice"]}
summon minecraft:marker 639 12 -35 {Tags:["choice"]}
summon minecraft:marker 643 11 -59 {Tags:["choice"]}
summon minecraft:marker 645 11 -58 {Tags:["choice"]}
summon minecraft:marker 639 11 -43 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]