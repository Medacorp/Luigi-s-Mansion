tag @s remove dead
tag @s remove remove_from_existence
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] unless block ~ ~ ~ minecraft:spruce_door[powered=false] run playsound luigis_mansion:block.door.locked block @a ~ ~ ~ 1
execute if block ~ ~ ~ #minecraft:doors[facing=east] align xyz run teleport @a[dx=1] ~-0.5 ~ ~0.5
execute if block ~ ~ ~ #minecraft:doors[facing=north] align xyz positioned ~ ~ ~-1 run teleport @a[dz=1] ~0.5 ~ ~2.5
execute if block ~ ~ ~ #minecraft:doors[facing=south] align xyz run teleport @a[dz=1] ~0.5 ~ ~-0.5
execute if block ~ ~ ~ #minecraft:doors[facing=west] align xyz positioned ~-1 ~ ~ run teleport @a[dx=1] ~2.5 ~ ~0.5

execute if entity @s[scores={AnimationProg=23}] run function luigis_mansion:animations/closed_door/place_door

execute if entity @s[scores={AnimationProg=25}] run function luigis_mansion:animations/closed_door/remove_door

execute if entity @s[scores={AnimationProg=33}] run function luigis_mansion:animations/closed_door/place_door

execute if entity @s[scores={AnimationProg=35}] run function luigis_mansion:animations/closed_door/remove_door