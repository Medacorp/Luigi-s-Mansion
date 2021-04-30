summon minecraft:marker 713 120 53 {Tags:["choice"]}
summon minecraft:marker 706 123 39 {Tags:["choice"]}
summon minecraft:marker 706 123 41 {Tags:["choice"]}
summon minecraft:marker 706 123 43 {Tags:["choice"]}
summon minecraft:marker 718 122 42 {Tags:["choice"]}
summon minecraft:marker 707 120 41 {Tags:["choice"]}
summon minecraft:marker 707 121 42 {Tags:["choice"]}
summon minecraft:marker 708 120 49 {Tags:["choice"]}
summon minecraft:marker 708 122 50 {Tags:["choice"]}
summon minecraft:marker 710 120 50 {Tags:["choice"]}
summon minecraft:marker 710 122 50 {Tags:["choice"]}
summon minecraft:marker 708 120 51 {Tags:["choice"]}
summon minecraft:marker 710 120 52 {Tags:["choice"]}
summon minecraft:marker 716 120 53 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]