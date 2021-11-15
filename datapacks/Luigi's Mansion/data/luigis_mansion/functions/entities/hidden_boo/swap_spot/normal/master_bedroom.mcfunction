summon minecraft:marker 695 113 55 {Tags:["choice"]}
summon minecraft:marker 697 113 48 {Tags:["choice"]}
summon minecraft:marker 697 113 44 {Tags:["choice"]}
summon minecraft:marker 696 114 39 {Tags:["choice"]}
summon minecraft:marker 696 114 39 {Tags:["choice"]}
summon minecraft:marker 692 114 39 {Tags:["choice"]}
summon minecraft:marker 695 111 55 {Tags:["choice"]}
summon minecraft:marker 690 111 52 {Tags:["choice"]}
summon minecraft:marker 690 111 41 {Tags:["choice"]}
summon minecraft:marker 689 111 40 {Tags:["choice"]}
summon minecraft:marker 695 111 39 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]