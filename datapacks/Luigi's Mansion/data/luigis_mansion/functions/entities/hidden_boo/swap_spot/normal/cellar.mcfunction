summon minecraft:marker 745 5 -44 {Tags:["choice"]}
summon minecraft:marker 736 5 -56 {Tags:["choice"]}
summon minecraft:marker 738 3 -45 {Tags:["choice"]}
summon minecraft:marker 737 3 -58 {Tags:["choice"]}
summon minecraft:marker 737 2 -55 {Tags:["choice"]}
summon minecraft:marker 743 2 -47 {Tags:["choice"]}
summon minecraft:marker 742 2 -52 {Tags:["choice"]}
summon minecraft:marker 742 2 -52 {Tags:["choice"]}
summon minecraft:marker 742 6 -52 {Tags:["choice"]}
summon minecraft:marker 743 2 -61 {Tags:["choice"]}
summon minecraft:marker 743 4 -61 {Tags:["choice"]}
summon minecraft:marker 743 6 -61 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]