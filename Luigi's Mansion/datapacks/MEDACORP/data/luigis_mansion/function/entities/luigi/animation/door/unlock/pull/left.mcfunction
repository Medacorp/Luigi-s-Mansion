scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=..259}] run function luigis_mansion:entities/luigi/animation/shared/freeze_player_alt {rotated:"~ 40"}
execute if entity @s[scores={AnimationProgress=260}] run function luigis_mansion:entities/luigi/animation/shared/freeze_player_alt {rotated:"~ 0"}
tag @s[scores={AnimationProgress=1}] add reset_rotation
tag @s[scores={AnimationProgress=1}] add door_animation
tag @s[tag=dark_room] add keep_poltergust_grabbed
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:item.key.grab block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=80}] run playsound luigis_mansion:item.key.use block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s Sound 10
scoreboard players set @s Invulnerable 1
tag @s[scores={AnimationProgress=260}] remove reset_rotation
tag @s[scores={AnimationProgress=260}] remove door_animation
scoreboard players set @s[scores={AnimationProgress=260}] Invulnerable 0
tag @s[scores={AnimationProgress=260}] add left_door
execute if entity @s[scores={AnimationProgress=260}] run function luigis_mansion:entities/luigi/animation/set/door/open/pull