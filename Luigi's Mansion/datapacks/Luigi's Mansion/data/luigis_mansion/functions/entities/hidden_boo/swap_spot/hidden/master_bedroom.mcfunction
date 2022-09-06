summon minecraft:marker 695 113 -40 {Tags:["choice"]}
summon minecraft:marker 697 113 -33 {Tags:["choice"]}
summon minecraft:marker 697 113 -29 {Tags:["choice"]}
summon minecraft:marker 696 114 -24 {Tags:["choice"]}
summon minecraft:marker 696 114 -24 {Tags:["choice"]}
summon minecraft:marker 692 114 -24 {Tags:["choice"]}
summon minecraft:marker 695 111 -40 {Tags:["choice"]}
summon minecraft:marker 690 111 -37 {Tags:["choice"]}
summon minecraft:marker 690 111 -26 {Tags:["choice"]}
summon minecraft:marker 689 111 -25 {Tags:["choice"]}
summon minecraft:marker 695 111 -24 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]