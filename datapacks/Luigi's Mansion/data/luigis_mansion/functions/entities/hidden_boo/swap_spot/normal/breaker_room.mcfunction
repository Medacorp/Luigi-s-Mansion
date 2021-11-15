summon minecraft:marker 695 2 -45 {Tags:["choice"]}
summon minecraft:marker 699 3 -51 {Tags:["choice"]}
summon minecraft:marker 698 2 -60 {Tags:["choice"]}
summon minecraft:marker 697 3 -61 {Tags:["choice"]}
summon minecraft:marker 697 2 -60 {Tags:["choice"]}
summon minecraft:marker 696 2 -60 {Tags:["choice"]}
summon minecraft:marker 695 3 -61 {Tags:["choice"]}
summon minecraft:marker 695 2 -60 {Tags:["choice"]}
summon minecraft:marker 694 2 -60 {Tags:["choice"]}
summon minecraft:marker 693 3 -61 {Tags:["choice"]}
summon minecraft:marker 693 2 -60 {Tags:["choice"]}
summon minecraft:marker 692 2 -60 {Tags:["choice"]}
summon minecraft:marker 691 3 -61 {Tags:["choice"]}
summon minecraft:marker 691 2 -60 {Tags:["choice"]}
summon minecraft:marker 690 2 -60 {Tags:["choice"]}
summon minecraft:marker 689 3 -61 {Tags:["choice"]}
summon minecraft:marker 689 2 -60 {Tags:["choice"]}
summon minecraft:marker 688 2 -60 {Tags:["choice"]}
summon minecraft:marker 690 2 -45 {Tags:["choice"]}
summon minecraft:marker 691 2 -44 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]