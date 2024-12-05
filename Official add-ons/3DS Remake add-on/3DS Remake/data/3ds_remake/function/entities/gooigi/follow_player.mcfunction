function luigis_mansion:entities/luigi/move/execute {execute:"at @e[tag=follow_me,limit=1]",teleport:"~ ~ ~ ~ ~"}
execute if entity @e[tag=follow_me,limit=1,tag=!flipped_gravity] run effect clear @s minecraft:levitation
execute if entity @e[tag=follow_me,limit=1,tag=!flipped_gravity] run tag @s remove flipped_gravity
execute if entity @e[tag=follow_me,limit=1,tag=flipped_gravity] run tag @s add flipped_gravity
scoreboard players operation @s Room = @e[tag=follow_me,limit=1] Room
execute if entity @s[scores={Shrunk=0}] run playsound 3ds_remake:entity.gooigi.vanish player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Shrunk=1..}] run playsound 3ds_remake:entity.gooigi.vanish player @a[tag=same_room] ~ ~ ~ 1 2
tag @e[tag=gooigi_model] add dead