summon minecraft:marker 703 27.5 73 {Tags:["random_select"]}
summon minecraft:marker 701 27.5 70 {Tags:["random_select"]}
summon minecraft:marker 701 27.5 67 {Tags:["random_select"]}
summon minecraft:marker 701 27.5 64 {Tags:["random_select"]}
execute if entity @s[scores={Dialog=2034..}] run summon minecraft:marker 709 27.5 72 {Tags:["random_select"]}
execute if entity @s[scores={Dialog=2034..}] run summon minecraft:marker 710 27.5 70 {Tags:["random_select"]}
execute if entity @s[scores={Dialog=2034..}] run summon minecraft:marker 711 27.5 68.0 {Tags:["random_select"]}
execute if entity @s[scores={Dialog=2034..}] run summon minecraft:marker 711 27.5 66.0 {Tags:["random_select"]}
execute positioned as @e[type=minecraft:marker,tag=random_select,sort=random,limit=1] run teleport @s ~ ~ ~
kill @e[type=minecraft:marker,tag=random_select]