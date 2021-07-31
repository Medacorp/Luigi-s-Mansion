summon minecraft:marker ~ ~ ~ {Tags:["choice","option_1"]}
summon minecraft:marker ~ ~ ~ {Tags:["choice","option_2"]}
summon minecraft:marker ~ ~ ~ {Tags:["choice","option_3"]}
summon minecraft:marker ~ ~ ~ {Tags:["choice","option_4"]}
tag @e[type=minecraft:marker,tag=choice,limit=1,sort=random] add selected
execute if entity @e[type=minecraft:marker,tag=choice,tag=selected,limit=1,tag=option_1] run tag @s add message_1
execute if entity @e[type=minecraft:marker,tag=choice,tag=selected,limit=1,tag=option_2] run tag @s add message_2
execute if entity @e[type=minecraft:marker,tag=choice,tag=selected,limit=1,tag=option_3] run tag @s add message_3
execute if entity @e[type=minecraft:marker,tag=choice,tag=selected,limit=1,tag=option_4] run tag @s add message_4
kill @e[type=minecraft:marker,tag=choice]
function #luigis_mansion:entities/boo/message