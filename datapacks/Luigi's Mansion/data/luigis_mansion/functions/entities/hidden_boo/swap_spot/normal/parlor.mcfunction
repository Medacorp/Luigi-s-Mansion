summon minecraft:marker 717 21 36 {Tags:["choice"]}
summon minecraft:marker 724 21 36 {Tags:["choice"]}
summon minecraft:marker 727 22 33 {Tags:["choice"]}
summon minecraft:marker 714 21 28 {Tags:["choice"]}
summon minecraft:marker 717 21 19 {Tags:["choice"]}
summon minecraft:marker 724 21 19 {Tags:["choice"]}
summon minecraft:marker 727 22 22 {Tags:["choice"]}
summon minecraft:marker 721 20 23 {Tags:["choice"]}
summon minecraft:marker 719 20 32 {Tags:["choice"]}
summon minecraft:marker 721 20 32 {Tags:["choice"]}
summon minecraft:marker 714 20 27 {Tags:["choice"]}
summon minecraft:marker 714 22 29 {Tags:["choice"]}
summon minecraft:marker 714 22 26 {Tags:["choice"]}
summon minecraft:marker 714 20 34 {Tags:["choice"]}
summon minecraft:marker 721 20 19 {Tags:["choice"]}
summon minecraft:marker 727 21 19 {Tags:["choice"]}
summon minecraft:marker 720 21 23 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.7,tag=caught_by_boo_radar,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add caught_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]