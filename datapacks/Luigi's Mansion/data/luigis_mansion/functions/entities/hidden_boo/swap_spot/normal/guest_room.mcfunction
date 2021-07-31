summon minecraft:marker 742 20 -58 {Tags:["choice"]}
summon minecraft:marker 738 20 -45 {Tags:["choice"]}
summon minecraft:marker 746 22 -48 {Tags:["choice"]}
summon minecraft:marker 736 23 -52 {Tags:["choice"]}
summon minecraft:marker 746 23 -52 {Tags:["choice"]}
summon minecraft:marker 736 23 -57 {Tags:["choice"]}
summon minecraft:marker 746 23 -60 {Tags:["choice"]}
summon minecraft:marker 736 20 -45 {Tags:["choice"]}
summon minecraft:marker 744 20 -61 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]