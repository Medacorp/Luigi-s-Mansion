summon minecraft:marker 703 29 -58 {Tags:["random_select"]}
summon minecraft:marker 701 29 -55 {Tags:["random_select"]}
summon minecraft:marker 701 29 -52 {Tags:["random_select"]}
summon minecraft:marker 701 29 -49 {Tags:["random_select"]}
execute if entity @s[tag=other_4] run summon minecraft:marker 709 29 -58 {Tags:["random_select"]}
execute if entity @s[tag=other_4] run summon minecraft:marker 710 29 -55 {Tags:["random_select"]}
execute if entity @s[tag=other_4] run summon minecraft:marker 711 29 -52 {Tags:["random_select"]}
execute if entity @s[tag=other_4] run summon minecraft:marker 711 29 -49 {Tags:["random_select"]}
execute positioned as @e[type=minecraft:marker,tag=random_select,sort=random,limit=1] run teleport @s ~ ~ ~
kill @e[type=minecraft:marker,tag=random_select]