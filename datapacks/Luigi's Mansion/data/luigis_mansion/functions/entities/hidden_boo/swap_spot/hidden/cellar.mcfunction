summon minecraft:marker 745 5 59 {Tags:["choice"]}
summon minecraft:marker 736 5 71 {Tags:["choice"]}
summon minecraft:marker 738 3 60 {Tags:["choice"]}
summon minecraft:marker 737 3 73 {Tags:["choice"]}
summon minecraft:marker 737 2 70 {Tags:["choice"]}
summon minecraft:marker 743 2 62 {Tags:["choice"]}
summon minecraft:marker 742 2 67 {Tags:["choice"]}
summon minecraft:marker 742 4 67 {Tags:["choice"]}
summon minecraft:marker 742 6 67 {Tags:["choice"]}
summon minecraft:marker 743 2 76 {Tags:["choice"]}
summon minecraft:marker 743 4 76 {Tags:["choice"]}
summon minecraft:marker 743 6 76 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]