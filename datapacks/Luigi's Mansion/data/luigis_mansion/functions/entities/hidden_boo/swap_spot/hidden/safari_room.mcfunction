summon minecraft:marker 740 29 71 {Tags:["choice"]}
summon minecraft:marker 745 31 60 {Tags:["choice"]}
summon minecraft:marker 734 29 59 {Tags:["choice"]}
summon minecraft:marker 734 30 59 {Tags:["choice"]}
summon minecraft:marker 735 29 67 {Tags:["choice"]}
summon minecraft:marker 735 31 68 {Tags:["choice"]}
summon minecraft:marker 737 29 68 {Tags:["choice"]}
summon minecraft:marker 737 31 68 {Tags:["choice"]}
summon minecraft:marker 735 29 69 {Tags:["choice"]}
summon minecraft:marker 737 29 70 {Tags:["choice"]}
summon minecraft:marker 743 29 71 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]