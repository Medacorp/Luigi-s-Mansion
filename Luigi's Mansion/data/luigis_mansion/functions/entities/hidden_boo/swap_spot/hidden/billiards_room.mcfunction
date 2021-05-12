summon minecraft:marker 683 11 -73 {Tags:["choice"]}
summon minecraft:marker 679 11 -73 {Tags:["choice"]}
summon minecraft:marker 677 13 -51 {Tags:["choice"]}
summon minecraft:marker 686 13 -55 {Tags:["choice"]}
summon minecraft:marker 675 12 -58 {Tags:["choice"]}
summon minecraft:marker 686 13 -67 {Tags:["choice"]}
summon minecraft:marker 683 13 -73 {Tags:["choice"]}
summon minecraft:marker 677 13 -73 {Tags:["choice"]}
summon minecraft:marker 675 13 -68 {Tags:["choice"]}
summon minecraft:marker 685 11 -52 {Tags:["choice"]}
summon minecraft:marker 686 11 -51 {Tags:["choice"]}
summon minecraft:marker 684 11 -52 {Tags:["choice"]}
summon minecraft:marker 685 11 -53 {Tags:["choice"]}
summon minecraft:marker 681 11 -63 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]