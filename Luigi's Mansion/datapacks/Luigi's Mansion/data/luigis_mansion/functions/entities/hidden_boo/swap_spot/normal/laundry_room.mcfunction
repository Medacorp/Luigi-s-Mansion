summon minecraft:marker 714 14 73 {Tags:["choice"]}
summon minecraft:marker 714 11 71 {Tags:["choice"]}
summon minecraft:marker 714 11 68 {Tags:["choice"]}
summon minecraft:marker 714 11 62 {Tags:["choice"]}
summon minecraft:marker 714 11 60 {Tags:["choice"]}
summon minecraft:marker 714 11 61 {Tags:["choice"]}
summon minecraft:marker 714 14 61 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]