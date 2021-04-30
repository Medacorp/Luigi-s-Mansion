summon minecraft:marker 716 96 38 {Tags:["choice"]}
summon minecraft:marker 707 96 50 {Tags:["choice"]}
summon minecraft:marker 709 94 39 {Tags:["choice"]}
summon minecraft:marker 708 94 52 {Tags:["choice"]}
summon minecraft:marker 708 93 49 {Tags:["choice"]}
summon minecraft:marker 714 93 41 {Tags:["choice"]}
summon minecraft:marker 713 93 46 {Tags:["choice"]}
summon minecraft:marker 713 95 46 {Tags:["choice"]}
summon minecraft:marker 713 97 46 {Tags:["choice"]}
summon minecraft:marker 714 93 55 {Tags:["choice"]}
summon minecraft:marker 714 95 55 {Tags:["choice"]}
summon minecraft:marker 714 97 55 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]