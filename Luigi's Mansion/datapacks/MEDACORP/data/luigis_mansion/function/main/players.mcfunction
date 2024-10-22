tag @s remove pause_dialog
tag @s remove wall_warp
execute if entity @s[scores={Room=..0}] if score #mirrored Selected matches 1 run scoreboard players set #mirrored Selected 2
execute if entity @s[tag=using_selection_menu,tag=fetch_option_result] run function luigis_mansion:entities/player/selection_menu/get_selected_option
execute if entity @s[tag=using_selection_menu,tag=!selection_menu_free_to_move] run function luigis_mansion:entities/player/selection_menu/freeze_in_place

scoreboard players remove @s TeleportDelayTimer 1
scoreboard players operation @s[scores={TeleportDelayTimer=-1}] TeleportDelayTimer = @s TeleportDelaySetting

tag @s add player
tag @s[tag=camera,gamemode=!spectator] remove spectator
execute if loaded ~ ~ ~ if loaded ~-48 ~ ~ if loaded ~48 ~ ~ if loaded ~ ~ ~-48 if loaded ~ ~ ~48 if loaded ~48 ~ ~48 if loaded ~48 ~ ~-48 if loaded ~-48 ~ ~48 if loaded ~-48 ~ ~-48 run function luigis_mansion:main/loaded_chunks
execute unless entity @s[scores={Health=-1000..}] run scoreboard players set @s Health 100
execute unless entity @s[scores={MaxHealth=0..}] run scoreboard players set @s MaxHealth 100

scoreboard players set @s[tag=!loaded_chunk_triggered] LoadedChunks 0
tag @s[tag=!loaded_chunk_triggered] remove loaded_chunks
tag @s remove loaded_chunk_triggered

scoreboard players operation #temp Room = @s Room
execute as @e[tag=!model_piece,tag=!reflection] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room

execute if entity @s[tag=!joined] run function luigis_mansion:other/join_world

execute unless score @s PreviousRoom = @s Room run tag @s remove seen_room_name
execute unless score @s PreviousRoom = @s Room if score #debug_messages Selected matches 2.. run tellraw @a {"type":"translatable","translate":"luigis_mansion:message.debug.format","with":[{"type":"translatable","translate":"luigis_mansion:message.debug","color":"gold"},{"type":"translatable","translate":"luigis_mansion:message.debug.room_number","with":[{"type":"selector","selector":"@s"},{"type":"score","score":{"name":"@s","objective":"PreviousRoom"}},{"type":"score","score":{"name":"@s","objective":"Room"}}]}]}
scoreboard players operation @s PreviousRoom = @s Room
execute unless entity @s[scores={Room=1..}] run scoreboard players set @s LastFloor -2

tag @s remove was_sneaking
tag @s[predicate=luigis_mansion:movement/sneak] add was_sneaking
scoreboard players set @s[tag=!was_sneaking,scores={SneakTime=20..}] SneakTime 0
scoreboard players add @s[scores={SneakTime=1..}] SneakTime 1
scoreboard players set @s[tag=was_sneaking] SneakTime 1
execute unless entity @s[scores={SneakTime=0..}] run scoreboard players set @s SneakTime 0
tag @s remove walking
execute unless entity @s[tag=using_selection_menu,tag=!selection_menu_free_to_move] unless entity @s[scores={AnimationProgresss=1..},tag=!idle,tag=!animation_free_to_move,tag=!using_selection_menu] run tag @s[predicate=!luigis_mansion:movement/stand_still,tag=!looking_at_map,scores={Health=1..}] add walking
execute if entity @s[scores={Room=0},tag=walking,tag=!played_opening_music] run function luigis_mansion:other/play_opening_music

execute if entity @s[tag=show_credits] run function luigis_mansion:credits
execute at @s[gamemode=!spectator] run function luigis_mansion:entities/player/not_spectator
execute if entity @s[gamemode=!spectator,scores={Shrunk=1..},tag=!disable_second_small_run] run scoreboard players operation @s OtherX = @s PositionX
execute if entity @s[gamemode=!spectator,scores={Shrunk=1..},tag=!disable_second_small_run] run scoreboard players operation @s OtherY = @s PositionY
execute if entity @s[gamemode=!spectator,scores={Shrunk=1..},tag=!disable_second_small_run] run scoreboard players operation @s OtherZ = @s PositionZ
execute if entity @s[gamemode=!spectator,scores={Shrunk=1..},tag=!disable_second_small_run] store result score @s PositionX run data get entity @s Pos[0] 100
execute if entity @s[gamemode=!spectator,scores={Shrunk=1..},tag=!disable_second_small_run] store result score @s PositionY run data get entity @s Pos[1] 100
execute if entity @s[gamemode=!spectator,scores={Shrunk=1..},tag=!disable_second_small_run] store result score @s PositionZ run data get entity @s Pos[2] 100
execute if entity @s[gamemode=!spectator,scores={Shrunk=1..},tag=!disable_second_small_run] run tag @s add small_second_run
execute at @s[gamemode=!spectator,scores={Shrunk=1..},tag=!disable_second_small_run] run function luigis_mansion:entities/player/not_spectator
tag @s remove small_second_run
tag @s remove disable_second_small_run
execute if entity @s[gamemode=spectator] run function luigis_mansion:entities/player/spectator
execute if entity @s[scores={Shrunk=1}] run function luigis_mansion:items/poison_mushroom/readd_inventory
scoreboard players remove @s[scores={Shrunk=1..}] Shrunk 1

execute unless entity @s[scores={Offline=0}] run function luigis_mansion:other/log_on
execute if entity @s[scores={ChangedMansion=1}] run function luigis_mansion:entities/player/changed_mansion

function luigis_mansion:entities/player/memory/forget_attacker

scoreboard players set @s UseItem 0
execute if entity @a[tag=!same_room,tag=!looking_at_map,scores={Room=1..},limit=1] run scoreboard players set #freeze_timer Selected 0
tag @e[tag=same_room] remove same_room
tag @e[tag=exact_same_room] remove exact_same_room

scoreboard players reset @s MirrorX
scoreboard players reset @s MirrorZ
scoreboard players reset @s LightX
scoreboard players reset @s LightY
scoreboard players reset @s LightZ
tag @s remove was_in_dialog
tag @s[tag=in_dialog] add was_in_dialog
tag @s remove in_dialog

tag @s add me
execute as @a[distance=..0.4,tag=!me,tag=!spectator,tag=!pause_dialog,limit=1] run function luigis_mansion:entities/player/collide
tag @s remove me
#todelete - old mirror reflections
tag @s remove mirror_set_by_furniture_entity
#/todelete
tag @s[tag=camera] add spectator
data remove storage luigis_mansion:data selected_option
execute if score #mirrored Selected matches 2 run scoreboard players set #mirrored Selected 1
execute if score #debug_phase_through_walls Selected matches 1 run tag @s add wall_warp