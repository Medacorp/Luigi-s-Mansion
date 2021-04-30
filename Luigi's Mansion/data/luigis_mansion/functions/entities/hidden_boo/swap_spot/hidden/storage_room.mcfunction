summon minecraft:marker 679 102 55 {Tags:["choice"]}
summon minecraft:marker 673 102 42 {Tags:["choice"]}
summon minecraft:marker 673 102 50 {Tags:["choice"]}
summon minecraft:marker 673 102 53 {Tags:["choice"]}
summon minecraft:marker 674 102 54 {Tags:["choice"]}
summon minecraft:marker 675 102 55 {Tags:["choice"]}
summon minecraft:marker 673 102 54 {Tags:["choice"]}
summon minecraft:marker 674 102 55 {Tags:["choice"]}
summon minecraft:marker 673 103 54 {Tags:["choice"]}
summon minecraft:marker 674 103 55 {Tags:["choice"]}
summon minecraft:marker 673 104 55 {Tags:["choice"]}
summon minecraft:marker 672 103 47 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]