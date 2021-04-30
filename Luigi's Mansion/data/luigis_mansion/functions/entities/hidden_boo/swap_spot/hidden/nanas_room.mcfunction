summon minecraft:marker 662 111 23 {Tags:["choice"]}
summon minecraft:marker 660 111 8 {Tags:["choice"]}
summon minecraft:marker 660 111 14 {Tags:["choice"]}
summon minecraft:marker 659 111 19 {Tags:["choice"]}
summon minecraft:marker 663 111 0 {Tags:["choice"]}
summon minecraft:marker 657 111 14 {Tags:["choice"]}
summon minecraft:marker 656 111 22 {Tags:["choice"]}
summon minecraft:marker 662 113 -1 {Tags:["choice"]}
summon minecraft:marker 655 113 11 {Tags:["choice"]}
summon minecraft:marker 655 115 11 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]