summon minecraft:marker 687 11 83 {Tags:["choice"]}
summon minecraft:marker 681 11 70 {Tags:["choice"]}
summon minecraft:marker 681 11 78 {Tags:["choice"]}
summon minecraft:marker 681 11 81 {Tags:["choice"]}
summon minecraft:marker 682 11 82 {Tags:["choice"]}
summon minecraft:marker 683 11 83 {Tags:["choice"]}
summon minecraft:marker 681 11 82 {Tags:["choice"]}
summon minecraft:marker 682 11 83 {Tags:["choice"]}
summon minecraft:marker 681 12 82 {Tags:["choice"]}
summon minecraft:marker 682 12 83 {Tags:["choice"]}
summon minecraft:marker 681 13 83 {Tags:["choice"]}
summon minecraft:marker 680 12 75 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]