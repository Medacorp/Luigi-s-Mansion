summon minecraft:marker 750 29 74 {Tags:["choice"]}
summon minecraft:marker 761 29 74 {Tags:["choice"]}
summon minecraft:marker 747 29 71 {Tags:["choice"]}
summon minecraft:marker 746 29 67 {Tags:["choice"]}
summon minecraft:marker 746 29 63 {Tags:["choice"]}
summon minecraft:marker 745 31 64 {Tags:["choice"]}
summon minecraft:marker 746 30 70 {Tags:["choice"]}
summon minecraft:marker 757 29 72 {Tags:["choice"]}
summon minecraft:marker 753 29 70 {Tags:["choice"]}
summon minecraft:marker 759 29 67 {Tags:["choice"]}
summon minecraft:marker 756 29 64 {Tags:["choice"]}
summon minecraft:marker 753 29 61 {Tags:["choice"]}
summon minecraft:marker 749 29 60 {Tags:["choice"]}
summon minecraft:marker 762 29 57 {Tags:["choice"]}
summon minecraft:marker 752 29 56 {Tags:["choice"]}
summon minecraft:marker 748 29 56 {Tags:["choice"]}
summon minecraft:marker 748 29 75 {Tags:["choice"]}
summon minecraft:marker 750 29 75 {Tags:["choice"]}
summon minecraft:marker 752 29 75 {Tags:["choice"]}
summon minecraft:marker 754 29 75 {Tags:["choice"]}
summon minecraft:marker 758 29 75 {Tags:["choice"]}
summon minecraft:marker 761 29 75 {Tags:["choice"]}
summon minecraft:marker 746 29 74 {Tags:["choice"]}
summon minecraft:marker 756 29 74 {Tags:["choice"]}
summon minecraft:marker 753 29 73 {Tags:["choice"]}
summon minecraft:marker 746 29 60 {Tags:["choice"]}
summon minecraft:marker 748 29 60 {Tags:["choice"]}
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:marker,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:marker,tag=choice]