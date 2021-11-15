summon minecraft:marker 702 12 -39 {Tags:["choice"]}
summon minecraft:marker 697 12 -50 {Tags:["choice"]}
summon minecraft:marker 710 12 -50 {Tags:["choice"]}
summon minecraft:marker 710 12 -64 {Tags:["choice"]}
summon minecraft:marker 697 11 -42 {Tags:["choice"]}
summon minecraft:marker 697 11 -44 {Tags:["choice"]}
summon minecraft:marker 710 11 -42 {Tags:["choice"]}
summon minecraft:marker 710 11 -44 {Tags:["choice"]}
summon minecraft:marker 697 11 -56 {Tags:["choice"]}
summon minecraft:marker 697 11 -58 {Tags:["choice"]}
summon minecraft:marker 710 11 -56 {Tags:["choice"]}
summon minecraft:marker 710 11 -58 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]