summon minecraft:marker 749 11 69 {Tags:["choice"]}
summon minecraft:marker 745 11 66 {Tags:["choice"]}
summon minecraft:marker 742 11 63 {Tags:["choice"]}
summon minecraft:marker 744 11 61 {Tags:["choice"]}
summon minecraft:marker 748 11 60 {Tags:["choice"]}
summon minecraft:marker 745 11 71 {Tags:["choice"]}
summon minecraft:marker 749 11 61 {Tags:["choice"]}
summon minecraft:marker 749 11 71 {Tags:["choice"]}
summon minecraft:marker 745 11 64 {Tags:["choice"]}
summon minecraft:marker 739 11 66 {Tags:["choice"]}
summon minecraft:marker 747 11 55 {Tags:["choice"]}
summon minecraft:marker 744 11 55 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]