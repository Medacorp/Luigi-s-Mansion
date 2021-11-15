summon minecraft:marker 738 20 48 {Tags:["choice"]}
summon minecraft:marker 745 20 47 {Tags:["choice"]}
summon minecraft:marker 741 21 48 {Tags:["choice"]}
summon minecraft:marker 739 22 48 {Tags:["choice"]}
summon minecraft:marker 747 20 46 {Tags:["choice"]}
summon minecraft:marker 746 20 45 {Tags:["choice"]}
summon minecraft:marker 738 22 42 {Tags:["choice"]}
summon minecraft:marker 745 21 31 {Tags:["choice"]}
summon minecraft:marker 746 23 31 {Tags:["choice"]}
summon minecraft:marker 747 21 31 {Tags:["choice"]}
summon minecraft:marker 739 22 34 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]