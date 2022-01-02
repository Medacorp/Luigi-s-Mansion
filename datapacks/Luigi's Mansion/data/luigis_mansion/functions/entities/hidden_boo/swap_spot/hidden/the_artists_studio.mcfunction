summon minecraft:marker 702 29 72 {Tags:["choice"]}
summon minecraft:marker 695 29 73 {Tags:["choice"]}
summon minecraft:marker 694 29 75 {Tags:["choice"]}
summon minecraft:marker 689 29 78 {Tags:["choice"]}
summon minecraft:marker 693 29 77 {Tags:["choice"]}
summon minecraft:marker 692 29 80 {Tags:["choice"]}
summon minecraft:marker 692 29 83 {Tags:["choice"]}
summon minecraft:marker 693 29 85 {Tags:["choice"]}
summon minecraft:marker 694 29 87 {Tags:["choice"]}
summon minecraft:marker 701 29 90 {Tags:["choice"]}
summon minecraft:marker 691 30 80 {Tags:["choice"]}
summon minecraft:marker 691 30 87 {Tags:["choice"]}
summon minecraft:marker 695 30 90 {Tags:["choice"]}
summon minecraft:marker 699 29 90 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]