summon minecraft:marker 736 11 -22 {Tags:["choice"]}
summon minecraft:marker 736 11 -37 {Tags:["choice"]}
summon minecraft:marker 746 11 -21 {Tags:["choice"]}
summon minecraft:marker 746 11 -37 {Tags:["choice"]}
summon minecraft:marker 744 11 -24 {Tags:["choice"]}
summon minecraft:marker 744 11 -34 {Tags:["choice"]}
summon minecraft:marker 739 11 -29 {Tags:["choice"]}
summon minecraft:marker 742 11 -29 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]