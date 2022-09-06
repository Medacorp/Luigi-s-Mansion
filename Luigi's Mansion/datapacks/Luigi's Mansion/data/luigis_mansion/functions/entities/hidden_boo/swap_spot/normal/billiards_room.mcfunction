summon minecraft:marker 683 11 88 {Tags:["choice"]}
summon minecraft:marker 679 11 88 {Tags:["choice"]}
summon minecraft:marker 677 13 66 {Tags:["choice"]}
summon minecraft:marker 686 13 70 {Tags:["choice"]}
summon minecraft:marker 675 12 73 {Tags:["choice"]}
summon minecraft:marker 686 13 82 {Tags:["choice"]}
summon minecraft:marker 683 13 88 {Tags:["choice"]}
summon minecraft:marker 677 13 88 {Tags:["choice"]}
summon minecraft:marker 675 13 83 {Tags:["choice"]}
summon minecraft:marker 685 11 67 {Tags:["choice"]}
summon minecraft:marker 686 11 66 {Tags:["choice"]}
summon minecraft:marker 684 11 67 {Tags:["choice"]}
summon minecraft:marker 685 11 68 {Tags:["choice"]}
summon minecraft:marker 681 11 78 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]