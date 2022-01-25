summon minecraft:marker 725 2 18 {Tags:["choice"]}
summon minecraft:marker 726 2 19 {Tags:["choice"]}
summon minecraft:marker 736 2 6 {Tags:["choice"]}
summon minecraft:marker 738 2 7 {Tags:["choice"]}
summon minecraft:marker 735 4 5 {Tags:["choice"]}
summon minecraft:marker 723 4 12 {Tags:["choice"]}
summon minecraft:marker 726 2 8 {Tags:["choice"]}
summon minecraft:marker 728 2 6 {Tags:["choice"]}
summon minecraft:marker 724 2 10 {Tags:["choice"]}
summon minecraft:marker 738 2 16 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]