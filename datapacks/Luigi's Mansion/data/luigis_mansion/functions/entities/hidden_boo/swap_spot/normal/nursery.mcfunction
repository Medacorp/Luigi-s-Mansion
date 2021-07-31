summon minecraft:marker 739 21 61 {Tags:["choice"]}
summon minecraft:marker 743 23 55 {Tags:["choice"]}
summon minecraft:marker 745 23 55 {Tags:["choice"]}
summon minecraft:marker 741 20 67 {Tags:["choice"]}
summon minecraft:marker 747 20 61 {Tags:["choice"]}
summon minecraft:marker 747 20 59 {Tags:["choice"]}
summon minecraft:marker 747 20 58 {Tags:["choice"]}
summon minecraft:marker 739 20 55 {Tags:["choice"]}
summon minecraft:marker 743 21 55 {Tags:["choice"]}
summon minecraft:marker 745 21 55 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]