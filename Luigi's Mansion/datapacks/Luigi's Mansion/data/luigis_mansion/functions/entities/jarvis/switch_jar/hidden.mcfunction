summon minecraft:marker 703 27.5 -58 {Tags:["random_select"]}
summon minecraft:marker 701 27.5 -55 {Tags:["random_select"]}
summon minecraft:marker 701 27.5 -52 {Tags:["random_select"]}
summon minecraft:marker 701 27.5 -49 {Tags:["random_select"]}
execute if entity @s[scores={Dialog=2034..}] run summon minecraft:marker 709 27.5 -58 {Tags:["random_select"]}
execute if entity @s[scores={Dialog=2034..}] run summon minecraft:marker 710 27.5 -55 {Tags:["random_select"]}
execute if entity @s[scores={Dialog=2034..}] run summon minecraft:marker 711 27.5 -52 {Tags:["random_select"]}
execute if entity @s[scores={Dialog=2034..}] run summon minecraft:marker 711 27.5 -49 {Tags:["random_select"]}
execute positioned as @e[type=minecraft:marker,tag=random_select,sort=random,limit=1] run teleport @s ~ ~ ~
kill @e[type=minecraft:marker,tag=random_select]