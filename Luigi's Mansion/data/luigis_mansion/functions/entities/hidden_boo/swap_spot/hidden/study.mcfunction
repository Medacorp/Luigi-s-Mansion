summon minecraft:marker 689 113 -21 {Tags:["choice"]}
summon minecraft:marker 693 113 -21 {Tags:["choice"]}
summon minecraft:marker 697 113 -13 {Tags:["choice"]}
summon minecraft:marker 691 113 -4 {Tags:["choice"]}
summon minecraft:marker 694 113 -4 {Tags:["choice"]}
summon minecraft:marker 697 111 -5 {Tags:["choice"]}
summon minecraft:marker 697 111 -21 {Tags:["choice"]}
summon minecraft:marker 688 111 -8 {Tags:["choice"]}
summon minecraft:marker 690 111 -9 {Tags:["choice"]}
summon minecraft:marker 691 111 -17 {Tags:["choice"]}
summon minecraft:marker 684 115 -14 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]