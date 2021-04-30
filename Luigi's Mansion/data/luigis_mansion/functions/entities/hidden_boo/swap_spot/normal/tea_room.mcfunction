summon minecraft:marker 641 20 -37 {Tags:["choice"]}
summon minecraft:marker 645 20 -37 {Tags:["choice"]}
summon minecraft:marker 641 20 -41 {Tags:["choice"]}
summon minecraft:marker 645 20 -41 {Tags:["choice"]}
summon minecraft:marker 641 20 -50 {Tags:["choice"]}
summon minecraft:marker 645 20 -50 {Tags:["choice"]}
summon minecraft:marker 641 20 -54 {Tags:["choice"]}
summon minecraft:marker 645 20 -54 {Tags:["choice"]}
summon minecraft:marker 643 21 -35 {Tags:["choice"]}
summon minecraft:marker 643 21 -56 {Tags:["choice"]}
summon minecraft:marker 643 21 -48 {Tags:["choice"]}
summon minecraft:marker 643 21 -52 {Tags:["choice"]}
summon minecraft:marker 643 20 -31 {Tags:["choice"]}
summon minecraft:marker 643 20 -60 {Tags:["choice"]}
summon minecraft:marker 643 21 -50 {Tags:["choice"]}
summon minecraft:marker 643 21 -54 {Tags:["choice"]}
summon minecraft:marker 643 20 -39 {Tags:["choice"]}
summon minecraft:marker 643 20 -51 {Tags:["choice"]}
summon minecraft:marker 643 22 -31 {Tags:["choice"]}
summon minecraft:marker 643 22 -60 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]