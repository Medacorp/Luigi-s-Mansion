summon minecraft:marker 741 32 -18 {Tags:["choice"]}
summon minecraft:marker 738 32 -8 {Tags:["choice"]}
summon minecraft:marker 738 32 3 {Tags:["choice"]}
summon minecraft:marker 745 29 -15 {Tags:["choice"]}
summon minecraft:marker 742 29 -12 {Tags:["choice"]}
summon minecraft:marker 738 29 -14 {Tags:["choice"]}
summon minecraft:marker 742 29 13 {Tags:["choice"]}
summon minecraft:marker 738 29 -2 {Tags:["choice"]}
summon minecraft:marker 750 29 12 {Tags:["choice"]}
summon minecraft:marker 753 29 11 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]