summon minecraft:marker 697 120 33 {Tags:["choice"]}
summon minecraft:marker 690 120 34 {Tags:["choice"]}
summon minecraft:marker 689 120 36 {Tags:["choice"]}
summon minecraft:marker 684 120 39 {Tags:["choice"]}
summon minecraft:marker 688 120 38 {Tags:["choice"]}
summon minecraft:marker 687 120 41 {Tags:["choice"]}
summon minecraft:marker 687 120 44 {Tags:["choice"]}
summon minecraft:marker 688 120 46 {Tags:["choice"]}
summon minecraft:marker 689 120 48 {Tags:["choice"]}
summon minecraft:marker 696 120 51 {Tags:["choice"]}
summon minecraft:marker 686 121 41 {Tags:["choice"]}
summon minecraft:marker 686 121 48 {Tags:["choice"]}
summon minecraft:marker 690 121 51 {Tags:["choice"]}
summon minecraft:marker 694 120 51 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]