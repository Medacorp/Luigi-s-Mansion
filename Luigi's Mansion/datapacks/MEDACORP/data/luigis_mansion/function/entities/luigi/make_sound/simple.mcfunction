execute unless entity @a[tag=same_room,limit=1] run tag @s add clear_room
scoreboard players operation #temp Room = @s Room
execute if entity @s[tag=clear_room] as @a run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
$execute at @s[scores={Shrunk=0}] run playsound $(sound) player @a[tag=same_room] ~ ~ ~ 1
$execute at @s[scores={Shrunk=1..}] run playsound $(sound) player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[tag=clear_room] run tag @a[tag=same_room] remove same_room
execute if entity @s[tag=clear_room] run tag @a[tag=exact_same_room] remove exact_same_room
tag @s remove clear_room