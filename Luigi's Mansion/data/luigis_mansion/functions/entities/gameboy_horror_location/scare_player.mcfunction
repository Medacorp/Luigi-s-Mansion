scoreboard players operation #temp ID = @s ID
execute as @a[tag=looking_at_map] if score @s ID = #temp ID run tag @s add me
effect give @a[tag=me,limit=1] minecraft:slowness 1 9 true
execute at @a[tag=me,limit=1] run playsound luigis_mansion:entity.player.scare player @a[tag=same_room] ~ ~ ~ 1
scoreboard players reset @a[tag=me,limit=1] MaxHealthTime
tag @a[tag=me,limit=1] remove me
scoreboard players reset #temp ID
playsound luigis_mansion:entity.player.scare player @a[tag=same_room] ~ ~ ~ 1