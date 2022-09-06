summon minecraft:marker 741 20 39 {Tags:["choice"]}
summon minecraft:marker 738 20 44 {Tags:["choice"]}
summon minecraft:marker 742 20 44 {Tags:["choice"]}
summon minecraft:marker 746 20 36 {Tags:["choice"]}
summon minecraft:marker 736 20 52 {Tags:["choice"]}
summon minecraft:marker 746 22 38 {Tags:["choice"]}
summon minecraft:marker 736 22 41 {Tags:["choice"]}
summon minecraft:marker 746 23 41 {Tags:["choice"]}
summon minecraft:marker 746 22 45 {Tags:["choice"]}
summon minecraft:marker 746 22 49 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]