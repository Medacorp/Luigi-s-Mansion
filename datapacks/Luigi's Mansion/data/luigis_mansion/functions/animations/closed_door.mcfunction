tag @s remove dead
tag @s remove remove_from_existence
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1},tag=!no_animation] run playsound luigis_mansion:block.door.locked block @a ~ ~ ~ 1
execute if block ~ ~ ~ #minecraft:doors[facing=east] align xyz as @a[dx=0,dy=1,dz=0] at @s run teleport @s ~-1 ~ ~
execute if block ~ ~ ~ #minecraft:doors[facing=north] align xyz as @a[dx=0,dy=1,dz=0] at @s run teleport @s ~ ~ ~1
execute if block ~ ~ ~ #minecraft:doors[facing=south] align xyz as @a[dx=0,dy=1,dz=0] at @s run teleport @s ~ ~ ~-1
execute if block ~ ~ ~ #minecraft:doors[facing=west] align xyz as @a[dx=0,dy=1,dz=0] at @s run teleport @s ~1 ~ ~

execute if entity @s[scores={AnimationProg=23},tag=!no_animation] run function luigis_mansion:animations/closed_door/place_door
execute if entity @s[scores={AnimationProg=25},tag=!no_animation] run function luigis_mansion:animations/closed_door/remove_door
execute if entity @s[scores={AnimationProg=33},tag=!no_animation] run function luigis_mansion:animations/closed_door/place_door
execute if entity @s[scores={AnimationProg=35},tag=!no_animation] run function luigis_mansion:animations/closed_door/remove_door
kill @s[scores={AnimationProg=40}]