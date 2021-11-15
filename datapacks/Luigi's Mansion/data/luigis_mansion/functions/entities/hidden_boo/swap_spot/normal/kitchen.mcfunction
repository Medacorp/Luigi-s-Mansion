summon minecraft:marker 699 11 65 {Tags:["choice"]}
summon minecraft:marker 701 11 70 {Tags:["choice"]}
summon minecraft:marker 705 11 89 {Tags:["choice"]}
summon minecraft:marker 700 11 85 {Tags:["choice"]}
summon minecraft:marker 699 15 88 {Tags:["choice"]}
summon minecraft:marker 699 14 85 {Tags:["choice"]}
summon minecraft:marker 709 14 83 {Tags:["choice"]}
summon minecraft:marker 709 14 76 {Tags:["choice"]}
summon minecraft:marker 699 14 75 {Tags:["choice"]}
summon minecraft:marker 709 14 71 {Tags:["choice"]}
summon minecraft:marker 709 14 87 {Tags:["choice"]}
summon minecraft:marker 709 14 79 {Tags:["choice"]}
summon minecraft:marker 709 14 66 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]