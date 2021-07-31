summon minecraft:marker 703 29 73 {Tags:["random_select"]}
summon minecraft:marker 701 29 70 {Tags:["random_select"]}
summon minecraft:marker 701 29 67 {Tags:["random_select"]}
summon minecraft:marker 701 29 64 {Tags:["random_select"]}
execute if entity @s[tag=other_4] run summon minecraft:marker 709 29 73 {Tags:["random_select"]}
execute if entity @s[tag=other_4] run summon minecraft:marker 710 29 70 {Tags:["random_select"]}
execute if entity @s[tag=other_4] run summon minecraft:marker 711 29 67 {Tags:["random_select"]}
execute if entity @s[tag=other_4] run summon minecraft:marker 711 29 64 {Tags:["random_select"]}
execute positioned as @e[type=minecraft:marker,tag=random_select,sort=random,limit=1] run teleport @s ~ ~ ~
kill @e[type=minecraft:marker,tag=random_select]