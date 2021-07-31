summon minecraft:marker 740 29 -56 {Tags:["choice"]}
summon minecraft:marker 733 32 -42 {Tags:["choice"]}
summon minecraft:marker 733 32 -44 {Tags:["choice"]}
summon minecraft:marker 733 32 -46 {Tags:["choice"]}
summon minecraft:marker 745 31 -45 {Tags:["choice"]}
summon minecraft:marker 734 29 -44 {Tags:["choice"]}
summon minecraft:marker 734 30 -45 {Tags:["choice"]}
summon minecraft:marker 735 29 -52 {Tags:["choice"]}
summon minecraft:marker 735 31 -53 {Tags:["choice"]}
summon minecraft:marker 737 29 -53 {Tags:["choice"]}
summon minecraft:marker 737 31 -53 {Tags:["choice"]}
summon minecraft:marker 735 29 -54 {Tags:["choice"]}
summon minecraft:marker 737 29 -55 {Tags:["choice"]}
summon minecraft:marker 743 29 -56 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]