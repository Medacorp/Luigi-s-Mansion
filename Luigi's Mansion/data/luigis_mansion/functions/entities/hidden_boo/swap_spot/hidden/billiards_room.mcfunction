summon minecraft:marker 681 102 -21 {Tags:["choice"]}
summon minecraft:marker 677 102 -21 {Tags:["choice"]}
summon minecraft:marker 675 104 1 {Tags:["choice"]}
summon minecraft:marker 684 104 -3 {Tags:["choice"]}
summon minecraft:marker 673 103 -6 {Tags:["choice"]}
summon minecraft:marker 684 104 -15 {Tags:["choice"]}
summon minecraft:marker 681 104 -21 {Tags:["choice"]}
summon minecraft:marker 675 104 -21 {Tags:["choice"]}
summon minecraft:marker 673 104 -16 {Tags:["choice"]}
summon minecraft:marker 683 102 0 {Tags:["choice"]}
summon minecraft:marker 684 102 1 {Tags:["choice"]}
summon minecraft:marker 682 102 0 {Tags:["choice"]}
summon minecraft:marker 683 102 -1 {Tags:["choice"]}
summon minecraft:marker 679 102 -11 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]