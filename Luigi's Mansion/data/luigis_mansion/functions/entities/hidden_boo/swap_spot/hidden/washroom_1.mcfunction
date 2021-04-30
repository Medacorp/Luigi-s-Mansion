summon minecraft:marker 666 104 -17 {Tags:["choice"]}
summon minecraft:marker 670 105 -17 {Tags:["choice"]}
summon minecraft:marker 670 104 -15 {Tags:["choice"]}
summon minecraft:marker 666 103 -19 {Tags:["choice"]}
summon minecraft:marker 668 105 -21 {Tags:["choice"]}
summon minecraft:marker 668 102 -19 {Tags:["choice"]}
summon minecraft:marker 666 102 -15 {Tags:["choice"]}
summon minecraft:marker 666 102 -12 {Tags:["choice"]}
summon minecraft:marker 666 105 -12 {Tags:["choice"]}
summon minecraft:marker 665 103 -15 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]