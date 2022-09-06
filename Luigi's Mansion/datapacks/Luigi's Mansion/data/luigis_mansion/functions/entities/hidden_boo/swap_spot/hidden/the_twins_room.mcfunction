summon minecraft:marker 738 20 -33 {Tags:["choice"]}
summon minecraft:marker 745 20 -32 {Tags:["choice"]}
summon minecraft:marker 741 21 -33 {Tags:["choice"]}
summon minecraft:marker 739 22 -33 {Tags:["choice"]}
summon minecraft:marker 747 20 -31 {Tags:["choice"]}
summon minecraft:marker 746 20 -30 {Tags:["choice"]}
summon minecraft:marker 738 22 -27 {Tags:["choice"]}
summon minecraft:marker 745 21 -16 {Tags:["choice"]}
summon minecraft:marker 746 23 -16 {Tags:["choice"]}
summon minecraft:marker 747 21 -16 {Tags:["choice"]}
summon minecraft:marker 739 22 -19 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]