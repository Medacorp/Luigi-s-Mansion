summon minecraft:marker 662 20 90 {Tags:["choice"]}
summon minecraft:marker 662 20 104 {Tags:["choice"]}
summon minecraft:marker 665 20 93 {Tags:["choice"]}
summon minecraft:marker 669 20 95 {Tags:["choice"]}
summon minecraft:marker 662 20 97 {Tags:["choice"]}
summon minecraft:marker 669 20 99 {Tags:["choice"]}
summon minecraft:marker 665 20 101 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]