summon minecraft:marker 662 13 -27 {Tags:["choice"]}
summon minecraft:marker 666 14 -27 {Tags:["choice"]}
summon minecraft:marker 666 13 -25 {Tags:["choice"]}
summon minecraft:marker 662 12 -29 {Tags:["choice"]}
summon minecraft:marker 664 14 -31 {Tags:["choice"]}
summon minecraft:marker 664 11 -29 {Tags:["choice"]}
summon minecraft:marker 662 11 -25 {Tags:["choice"]}
summon minecraft:marker 662 11 -22 {Tags:["choice"]}
summon minecraft:marker 662 14 -22 {Tags:["choice"]}
summon minecraft:marker 661 12 -25 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]