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

execute if entity @s[tag=!joined] run function luigis_mansion:other/join_world

scoreboard players operation #temp Room = @s Room
execute as @e[tag=!model_piece,tag=!reflection] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room

execute unless score @s PreviousRoom = @s Room run tag @s remove seen_room_name
execute unless score @s PreviousRoom = @s Room run stopsound @s[scores={RoomNoise=1..}] ambient
execute unless score @s PreviousRoom = @s Room run scoreboard players set @s RoomNoise 0
execute unless score @s PreviousRoom = @s Room if score #debug_messages Selected matches 2.. run tellraw @a {type:"translatable",translate:"luigis_mansion:message.debug.format",with:[{type:"translatable",translate:"luigis_mansion:message.debug",color:"gold"},{type:"translatable",translate:"luigis_mansion:message.debug.room_number",with:[{type:"selector",selector:"@s"},{type:"score",score:{name:"@s",objective:"PreviousRoom"}},{type:"score",score:{name:"@s",objective:"Room"}}]}]}
scoreboard players operation @s PreviousRoom = @s Room
execute unless entity @s[scores={Room=1..}] run scoreboard players set @s LastFloor -2

scoreboard players add @s[scores={SneakTime=1..}] SneakTime 1
scoreboard players set @s[scores={Sneaking=1},tag=!was_sneaking] SneakTime 1
tag @s[scores={Sneaking=1}] add was_sneaking
tag @s[scores={Sneaking=0}] remove was_sneaking
scoreboard players set @s[scores={Sneaking=0,SneakTime=20..}] SneakTime 0
execute unless entity @s[scores={SneakTime=0..}] run scoreboard players set @s SneakTime 0
tag @s[tag=walking] remove walking
tag @s[scores={Walk=1..}] add walking
tag @s[scores={WalkOnWater=1..}] add walking
tag @s[scores={WalkUnderWater=1..}] add walking
execute if entity @s[nbt={OnGround:0b},tag=!flipped_gravity,tag=!looking_at_map] if block ~ ~-0.01 ~ #luigis_mansion:all_ignore run tag @s add walking
execute if entity @s[nbt={OnGround:0b},tag=flipped_gravity,tag=!looking_at_map] run function luigis_mansion:entities/player/flipped_walking
scoreboard players set @s[scores={Walk=1..}] Walk 0
scoreboard players set @s[scores={WalkOnWater=1..}] WalkOnWater 0
scoreboard players set @s[scores={WalkUnderWater=1..}] WalkUnderWater 0
tag @s[tag=swimming] remove swimming
tag @s[scores={Swimming=1..}] add swimming
execute if block ~ ~ ~ minecraft:water if entity @s[nbt={FallFlying:0b}] positioned ~ ~1 ~ unless entity @s[dy=0] run tag @s add swimming
scoreboard players set @s[scores={Swimming=1..}] Swimming 0
tag @s[tag=running] remove running
tag @s[scores={Run=1..}] add running
scoreboard players set @s[scores={Run=1..}] Run 0
tag @s[tag=sneak_pos] remove sneak_pos
tag @s[scores={Sneaking=1..}] add sneak_pos
scoreboard players set @s[scores={Sneaking=1..}] Sneaking 0
tag @s[tag=sneaking] remove sneaking
tag @s[scores={Sneak=1..}] add sneaking
scoreboard players set @s[scores={Sneak=1..}] Sneak 0
tag @s[tag=walking,tag=sneak_pos] add sneaking
tag @s[tag=walking,tag=sneak_pos] remove walking
execute if entity @s[tag=flipped_gravity] run function luigis_mansion:entities/player/correct_flipped_position

execute if entity @s[tag=show_credits] run function luigis_mansion:credits
execute at @s[gamemode=!spectator] run function luigis_mansion:entities/player/not_spectator
execute at @s[gamemode=spectator] run function luigis_mansion:entities/player/spectator

execute if data storage luigis_mansion:data bad_add_ons[0] run tellraw @s[tag=warn_for_add_ons] {type:"translatable",translate:"luigis_mansion:message.debug.format",with:[{type:"translatable",translate:"luigis_mansion:message.debug",color:"gold"},{type:"translatable",translate:"luigis_mansion:message.debug.bad_add_on_install",color:"red",with:[{source:"storage",storage:"luigis_mansion:data",type:"nbt",nbt:"bad_add_ons[]",interpret:true,separator:{type:"text",text:", ",hover_event:{action:"show_text",value:""}}}]}]}
tag @s remove warn_for_add_ons
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
tag @s remove wall_warp_teleported

tag @s add me
execute as @a[distance=..0.4,tag=!me,tag=!spectator,tag=!door_animation,limit=1] run function luigis_mansion:entities/player/collide
tag @s remove me
#todelete - old mirror reflections
tag @s remove mirror_set_by_furniture_entity
#/todelete
tag @s[tag=camera] add spectator
data remove storage luigis_mansion:data selected_option
execute if score #mirrored Selected matches 2 run scoreboard players set #mirrored Selected 1