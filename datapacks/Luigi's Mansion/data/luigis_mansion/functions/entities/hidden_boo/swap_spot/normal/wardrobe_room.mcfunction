summon minecraft:marker 679 21 58 {Tags:["choice"]}
summon minecraft:marker 679 21 65 {Tags:["choice"]}
summon minecraft:marker 679 21 73 {Tags:["choice"]}
summon minecraft:marker 686 22 63 {Tags:["choice"]}
summon minecraft:marker 686 21 59 {Tags:["choice"]}
summon minecraft:marker 685 20 57 {Tags:["choice"]}
summon minecraft:marker 680 20 57 {Tags:["choice"]}
summon minecraft:marker 677 20 61 {Tags:["choice"]}
summon minecraft:marker 678 22 68 {Tags:["choice"]}
summon minecraft:marker 678 22 69 {Tags:["choice"]}
summon minecraft:marker 678 22 70 {Tags:["choice"]}
summon minecraft:marker 678 22 71 {Tags:["choice"]}
summon minecraft:marker 686 22 65 {Tags:["choice"]}
summon minecraft:marker 686 22 67 {Tags:["choice"]}
summon minecraft:marker 686 22 71 {Tags:["choice"]}
summon minecraft:marker 686 22 73 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]