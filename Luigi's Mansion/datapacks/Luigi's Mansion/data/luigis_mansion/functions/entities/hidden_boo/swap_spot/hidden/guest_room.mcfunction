summon minecraft:marker 742 20 73 {Tags:["choice"]}
summon minecraft:marker 738 20 60 {Tags:["choice"]}
summon minecraft:marker 746 22 63 {Tags:["choice"]}
summon minecraft:marker 736 23 67 {Tags:["choice"]}
summon minecraft:marker 746 23 67 {Tags:["choice"]}
summon minecraft:marker 736 23 72 {Tags:["choice"]}
summon minecraft:marker 746 23 75 {Tags:["choice"]}
summon minecraft:marker 736 20 60 {Tags:["choice"]}
summon minecraft:marker 744 20 76 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]