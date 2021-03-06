tag @s[tag=camera,gamemode=!spectator] remove spectator
execute unless block ~ ~ ~ minecraft:air{loaded:0b} unless block ~-48 ~ ~ minecraft:air{loaded:0b} unless block ~48 ~ ~ minecraft:air{loaded:0b} unless block ~ ~ ~-48 minecraft:air{loaded:0b} unless block ~ ~ ~48 minecraft:air{loaded:0b} unless block ~48 ~ ~48 minecraft:air{loaded:0b} unless block ~48 ~ ~-48 minecraft:air{loaded:0b} unless block ~-48 ~ ~48 minecraft:air{loaded:0b} unless block ~-48 ~ ~-48 minecraft:air{loaded:0b} run function luigis_mansion:main/loaded_chunks
execute if entity @s[scores={Jump=1..}] unless block ~ ~ ~ #minecraft:climbable run function luigis_mansion:main/prevent_jump
execute if entity @s[tag=flipped_gravity] run function luigis_mansion:entities/player/correct_flipped_position
execute unless entity @s[scores={Health=-1000..}] run scoreboard players set @s Health 100
execute unless entity @s[scores={MaxHealth=0..}] run scoreboard players set @s MaxHealth 100

scoreboard players set @s[tag=!loaded_chunk_triggered] LoadedChunks 0
tag @s[tag=!loaded_chunk_triggered] remove loaded_chunks
tag @s remove loaded_chunk_triggered

scoreboard players operation #temp Room = @s Room
execute as @a run function #luigis_mansion:get_same_room
execute as @e[tag=ghost] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room

function luigis_mansion:dialog/try
execute if entity @s[tag=show_credits] run function luigis_mansion:credits
function #luigis_mansion:player_tag_dialogs
execute at @s[gamemode=!spectator] run function luigis_mansion:entities/player/not_spectator
execute if entity @s[gamemode=!spectator,scores={Shrunk=1..}] unless entity @s[scores={ScareTime=20,ScareType=2..3}] run scoreboard players operation @s OtherX = @s PosX
execute if entity @s[gamemode=!spectator,scores={Shrunk=1..}] unless entity @s[scores={ScareTime=20,ScareType=2..3}] run scoreboard players operation @s OtherY = @s PosY
execute if entity @s[gamemode=!spectator,scores={Shrunk=1..}] unless entity @s[scores={ScareTime=20,ScareType=2..3}] run scoreboard players operation @s OtherZ = @s PosZ
execute if entity @s[gamemode=!spectator,scores={Shrunk=1..}] unless entity @s[scores={ScareTime=20,ScareType=2..3}] store result score @s PosX run data get entity @s Pos[0] 100
execute if entity @s[gamemode=!spectator,scores={Shrunk=1..}] unless entity @s[scores={ScareTime=20,ScareType=2..3}] store result score @s PosY run data get entity @s Pos[1] 100
execute if entity @s[gamemode=!spectator,scores={Shrunk=1..}] unless entity @s[scores={ScareTime=20,ScareType=2..3}] store result score @s PosZ run data get entity @s Pos[2] 100
execute if entity @s[gamemode=!spectator,scores={Shrunk=1..}] unless entity @s[scores={ScareTime=20,ScareType=2..3}] run tag @s add small_second_run
execute at @s[gamemode=!spectator,scores={Shrunk=1..}] unless entity @s[scores={ScareTime=20,ScareType=2..3}] run function luigis_mansion:entities/player/not_spectator
tag @s remove small_second_run
execute if entity @s[gamemode=spectator] run function luigis_mansion:entities/player/spectator
execute if entity @s[scores={Shrunk=1}] run function luigis_mansion:items/poison_mushroom/readd_inventory
scoreboard players remove @s[scores={Shrunk=1..}] Shrunk 1

scoreboard players set @s[tag=fix_health] Health 100
tag @s remove fix_health
execute if entity @s[tag=!joined] run function luigis_mansion:other/join_world
execute if entity @s[scores={Offline=1..}] run function luigis_mansion:other/log_on
execute if entity @s[scores={ChangedMansion=1}] run function luigis_mansion:entities/player/changed_mansion

execute unless score @s PrevRoom = @s Room run tag @s remove seen_room_name
scoreboard players operation @s PrevRoom = @s Room
execute unless entity @s[scores={Room=1..}] run scoreboard players set @s LastFloor -2

scoreboard players set @s UseItem 0
scoreboard players add @s[scores={SneakTime=1..}] SneakTime 1
scoreboard players set @s[scores={Sneaking=1},tag=!was_sneaking] SneakTime 1
tag @s[scores={Sneaking=1}] add was_sneaking
tag @s[scores={Sneaking=0}] remove was_sneaking
scoreboard players set @s[scores={Sneaking=0,SneakTime=20..}] SneakTime 0
execute unless entity @s[scores={SneakTime=0..}] run scoreboard players set @s SneakTime 0
scoreboard players set @s Jump 0
execute store result score @s JumpHeight run data get entity @s Pos[1] 1000
scoreboard players add @s JumpHeight 1
tag @s[tag=walking] remove walking
tag @s[scores={Walk=1..},tag=!looking_at_map] add walking
tag @s[scores={WalkOnWater=1..},tag=!looking_at_map] add walking
tag @s[scores={WalkUnderWater=1..},tag=!looking_at_map] add walking
execute if entity @s[nbt={OnGround:0b},tag=!flipped_gravity,tag=!looking_at_map] if block ~ ~-0.01 ~ #luigis_mansion:ghosts_ignore run tag @s add walking
execute if entity @s[nbt={OnGround:0b},tag=flipped_gravity,tag=!looking_at_map] if block ~ ~1.8 ~ #luigis_mansion:ghosts_ignore run tag @s add walking
execute if entity @s[nbt={OnGround:0b},tag=flipped_gravity,tag=!looking_at_map] unless score @s PosX = @s OtherX run tag @s add walking
execute if entity @s[nbt={OnGround:0b},tag=flipped_gravity,tag=!looking_at_map] unless score @s PosZ = @s OtherZ run tag @s add walking
execute if entity @s[scores={Room=0},tag=walking,tag=!played_opening_music] run function luigis_mansion:other/play_opening_music
scoreboard players set @s[scores={Walk=1..}] Walk 0
scoreboard players set @s[scores={WalkOnWater=1..}] WalkOnWater 0
scoreboard players set @s[scores={WalkUnderWater=1..}] WalkUnderWater 0
tag @s[tag=swimming] remove swimming
tag @s[scores={Swimming=1..},tag=!looking_at_map] add swimming
execute if block ~ ~ ~ minecraft:water if entity @s[nbt={FallFlying:0b}] positioned ~ ~1 ~ unless entity @s[dy=0] run tag @s add swimming
scoreboard players set @s[scores={Swimming=1..}] Swimming 0
tag @s[tag=running] remove running
tag @s[scores={Run=1..},tag=!looking_at_map] add running
scoreboard players set @s[scores={Run=1..}] Run 0
tag @s[tag=sneak_pos] remove sneak_pos
tag @s[scores={Sneaking=1..},tag=!looking_at_map] add sneak_pos
scoreboard players set @s[scores={Sneaking=1..}] Sneaking 0
tag @s[tag=sneaking] remove sneaking
tag @s[scores={Sneak=1..},tag=!looking_at_map] add sneaking
scoreboard players set @s[scores={Sneak=1..}] Sneak 0
tag @s[tag=walking,tag=sneak_pos] add sneaking
tag @s[tag=walking,tag=sneak_pos] remove walking
tag @s[tag=attacking] remove attacking
tag @s[scores={Attack=1..}] add attacking
scoreboard players set @s[scores={Attack=1..}] Attack 0

execute if entity @a[tag=!same_room,tag=!looking_at_map,scores={Room=1..},limit=1] run scoreboard players set #freeze_timer Selected 0
tag @e[tag=same_room] remove same_room
tag @s remove already_ticked

tellraw @s[scores={ClickEventCheck=1}] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.format_explanation.check"}]}
scoreboard players set @s ClickEventCheck 0
scoreboard players enable @s ClickEventCheck

scoreboard players reset @s MirrorX
scoreboard players reset @s MirrorZ
scoreboard players reset @s LightX
scoreboard players reset @s LightY
scoreboard players reset @s LightZ

execute unless entity @s[scores={SettingsCheck=0}] run function luigis_mansion:settings/menu

tag @s add me
execute as @a[distance=..0.4,tag=!me,limit=1] run function luigis_mansion:entities/player/collide
tag @s remove me
tag @s[tag=camera] add spectator