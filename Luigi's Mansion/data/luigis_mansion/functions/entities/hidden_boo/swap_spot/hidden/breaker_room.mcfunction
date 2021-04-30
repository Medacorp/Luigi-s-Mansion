summon minecraft:marker 694 93 39 {Tags:["choice"]}
summon minecraft:marker 698 94 45 {Tags:["choice"]}
summon minecraft:marker 697 93 54 {Tags:["choice"]}
summon minecraft:marker 696 94 55 {Tags:["choice"]}
summon minecraft:marker 696 93 54 {Tags:["choice"]}
summon minecraft:marker 695 93 54 {Tags:["choice"]}
summon minecraft:marker 694 94 55 {Tags:["choice"]}
summon minecraft:marker 694 93 54 {Tags:["choice"]}
summon minecraft:marker 693 93 54 {Tags:["choice"]}
summon minecraft:marker 692 94 55 {Tags:["choice"]}
summon minecraft:marker 691 93 54 {Tags:["choice"]}
summon minecraft:marker 691 93 54 {Tags:["choice"]}
summon minecraft:marker 690 94 55 {Tags:["choice"]}
summon minecraft:marker 690 93 54 {Tags:["choice"]}
summon minecraft:marker 689 93 54 {Tags:["choice"]}
summon minecraft:marker 688 94 55 {Tags:["choice"]}
summon minecraft:marker 688 93 54 {Tags:["choice"]}
summon minecraft:marker 687 93 54 {Tags:["choice"]}
summon minecraft:marker 689 93 39 {Tags:["choice"]}
summon minecraft:marker 690 93 38 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]