summon minecraft:marker 679 20 -43 {Tags:["choice"]}
summon minecraft:marker 679 20 -50 {Tags:["choice"]}
summon minecraft:marker 679 20 -58 {Tags:["choice"]}
summon minecraft:marker 686 22 -48 {Tags:["choice"]}
summon minecraft:marker 686 21 -44 {Tags:["choice"]}
summon minecraft:marker 685 20 -42 {Tags:["choice"]}
summon minecraft:marker 680 20 -42 {Tags:["choice"]}
summon minecraft:marker 677 20 -46 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]