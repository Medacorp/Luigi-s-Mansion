scoreboard players add @s AnimationProgress 1
function luigis_mansion:entities/luigi/animation/shared/freeze_player_alt {rotated:"~ 0"}
tag @s[scores={AnimationProgress=1}] add reset_rotation
tag @s[scores={AnimationProgress=1}] add door_animation
tag @s[tag=dark_room] add keep_poltergust_grabbed
execute if entity @s[scores={AnimationProgress=10}] run function luigis_mansion:entities/luigi/make_sound/full_volume_self {high:"luigis_mansion:entity.player.open_door.high_health",medium:"luigis_mansion:entity.player.open_door.high_health",low:"luigis_mansion:entity.player.open_door.low_health",high:"luigis_mansion:entity.player.open_door.self.high_health",medium:"luigis_mansion:entity.player.open_door.self.high_health",low:"luigis_mansion:entity.player.open_door.self.low_health",duration:40}
execute if entity @s[scores={AnimationProgress=7..26}] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^0.1 ~ ~"}
execute if entity @s[scores={AnimationProgress=13}] run tag @a[tag=this_player,limit=1] add wall_warp
execute if entity @s[scores={AnimationProgress=13}] if data entity @e[tag=furniture,tag=door,tag=open_door,distance=..0.7,limit=1] ArmorItems[3].components."minecraft:custom_data".go_through_command run function luigis_mansion:entities/furniture/type/door/go_through with entity @e[tag=furniture,tag=door,tag=open_door,distance=..0.7,limit=1] ArmorItems[3].components."minecraft:custom_data"
scoreboard players set @s[scores={AnimationProgress=14}] RoomNoise 0
stopsound @s[scores={AnimationProgress=14}] ambient
execute if entity @s[scores={AnimationProgress=14}] run tag @a[tag=this_player,limit=1] remove wall_warp
execute if entity @e[tag=furniture,tag=door,tag=!open_door,tag=!forced_animation,distance=..0.7] run function luigis_mansion:entities/furniture/type/door/force_animation
scoreboard players set @s Sound 10
scoreboard players set @s Invulnerable 1
execute unless entity @e[tag=luigi,tag=!this_player,limit=1] run scoreboard players set #freeze_timer Selected 1
tag @s[scores={AnimationProgress=50}] remove reset_rotation
tag @s[scores={AnimationProgress=50}] remove door_animation
scoreboard players set @s[scores={AnimationProgress=50}] Invulnerable 0
execute if entity @s[scores={AnimationProgress=50}] run function luigis_mansion:entities/luigi/animation/set/none