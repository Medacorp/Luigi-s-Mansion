summon minecraft:marker 701 12 54 {Tags:["choice"]}
summon minecraft:marker 697 12 65 {Tags:["choice"]}
summon minecraft:marker 710 12 65 {Tags:["choice"]}
summon minecraft:marker 710 12 79 {Tags:["choice"]}
summon minecraft:marker 697 11 57 {Tags:["choice"]}
summon minecraft:marker 697 11 59 {Tags:["choice"]}
summon minecraft:marker 710 11 57 {Tags:["choice"]}
summon minecraft:marker 710 11 59 {Tags:["choice"]}
summon minecraft:marker 697 11 71 {Tags:["choice"]}
summon minecraft:marker 697 11 73 {Tags:["choice"]}
summon minecraft:marker 710 11 71 {Tags:["choice"]}
summon minecraft:marker 710 11 73 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]