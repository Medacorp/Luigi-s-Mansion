summon minecraft:marker 714 14 -58 {Tags:["choice"]}
summon minecraft:marker 714 11 -56 {Tags:["choice"]}
summon minecraft:marker 714 11 -53 {Tags:["choice"]}
summon minecraft:marker 714 11 -47 {Tags:["choice"]}
summon minecraft:marker 714 11 -45 {Tags:["choice"]}
summon minecraft:marker 714 11 -46 {Tags:["choice"]}
summon minecraft:marker 714 14 -46 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]