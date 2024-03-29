scoreboard players add @s AnimationProgress 1
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s HomeRotation
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ 0
kill @e[tag=home,limit=1]
tag @s[scores={AnimationProgress=1}] add reset_rotation
tag @s[scores={AnimationProgress=1}] add animation_may_move
execute if entity @s[scores={AnimationProgress=10,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.open_door.high_health player @a[tag=same_room,distance=0.1..] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=10,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.open_door.high_health player @a[tag=same_room,distance=0.1..] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=10,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.open_door.low_health player @a[tag=same_room,distance=0.1..] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=10,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.open_door.low_health player @a[tag=same_room,distance=0.1..] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=10,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.open_door.self.high_health player @s ~ ~ ~ 1000
execute if entity @s[scores={AnimationProgress=10,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.open_door.self.high_health player @s ~ ~ ~ 1000 2
execute if entity @s[scores={AnimationProgress=10,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.open_door.self.low_health player @s ~ ~ ~ 1000
execute if entity @s[scores={AnimationProgress=10,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.open_door.self.low_health player @s ~ ~ ~ 1000 2
execute at @s run teleport @s[scores={AnimationProgress=5..14}] ^ ^ ^-0.1
execute at @s run teleport @s[scores={AnimationProgress=15..34}] ^ ^ ^0.1
tag @s[scores={AnimationProgress=31}] add wall_warp
execute if entity @s[scores={AnimationProgress=31}] if data entity @e[tag=furniture,tag=door,tag=open_door,distance=..0.7,limit=1] ArmorItems[3].tag.luigis_mansion.go_through_command run function luigis_mansion:entities/furniture/type/door/go_through with entity @e[tag=furniture,tag=door,tag=open_door,distance=..0.7,limit=1] ArmorItems[3].tag.luigis_mansion
scoreboard players set @s[scores={AnimationProgress=32}] RoomNoise 0
stopsound @s[scores={AnimationProgress=32}] ambient
tag @s[scores={AnimationProgress=32}] remove wall_warp
execute if entity @e[tag=furniture,tag=door,tag=!open_door,tag=!forced_animation,distance=..0.7] run function luigis_mansion:entities/furniture/type/tick/door/force_animation
scoreboard players set @s Sound 10
scoreboard players set @s Invulnerable 1000
tag @s add pause_dialog
execute unless entity @a[tag=!spectator,distance=0.1..,limit=1] run scoreboard players set #freeze_timer Selected 1
tag @s[scores={AnimationProgress=50}] remove reset_rotation
scoreboard players set @s[scores={AnimationProgress=50}] Invulnerable 0
execute if entity @s[scores={AnimationProgress=60}] run function luigis_mansion:entities/player/animation/set/none