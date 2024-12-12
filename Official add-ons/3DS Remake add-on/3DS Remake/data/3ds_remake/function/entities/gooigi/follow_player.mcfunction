function luigis_mansion:entities/luigi/move/execute {execute:"at @e[tag=follow_me,limit=1]",teleport:"~ ~ ~ ~ ~"}
execute if entity @e[tag=follow_me,limit=1,tag=!flipped_gravity] run effect clear @s minecraft:levitation
execute if entity @e[tag=follow_me,limit=1,tag=!flipped_gravity] run tag @s remove flipped_gravity
execute if entity @e[tag=follow_me,limit=1,tag=flipped_gravity] run tag @s add flipped_gravity
scoreboard players operation @s Room = @e[tag=follow_me,limit=1] Room
function luigis_mansion:entities/luigi/make_sound/simple {sound:"3ds_remake:entity.gooigi.vanish"}
tag @e[tag=gooigi_model] add dead