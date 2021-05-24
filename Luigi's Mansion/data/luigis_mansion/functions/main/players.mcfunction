execute unless block ~ ~ ~ minecraft:air{loaded:0b} unless block ~-48 ~ ~ minecraft:air{loaded:0b} unless block ~48 ~ ~ minecraft:air{loaded:0b} unless block ~ ~ ~-48 minecraft:air{loaded:0b} unless block ~ ~ ~48 minecraft:air{loaded:0b} unless block ~48 ~ ~48 minecraft:air{loaded:0b} unless block ~48 ~ ~-48 minecraft:air{loaded:0b} unless block ~-48 ~ ~48 minecraft:air{loaded:0b} unless block ~-48 ~ ~-48 minecraft:air{loaded:0b} run function luigis_mansion:main/loaded_chunks
#execute if entity @s[scores={Jump=1..}] run function luigis_mansion:main/prevent_jump
execute unless entity @s[scores={Health=-1000..}] run scoreboard players set @s Health 100
execute unless entity @s[scores={MaxHealth=0..}] run scoreboard players set @s MaxHealth 100

scoreboard players set @s[tag=!loaded_chunk_triggered] LoadedChunks 0
tag @s[tag=!loaded_chunk_triggered] remove loaded_chunks
tag @s remove loaded_chunk_triggered

scoreboard players operation #temp Room = @s Room
execute as @a run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room

function luigis_mansion:dialog/try
function luigis_mansion:other/music
execute if entity @s[gamemode=!spectator] run function luigis_mansion:entities/player/not_spectator
execute if entity @s[gamemode=spectator] run function luigis_mansion:entities/player/spectator
execute if entity @s[scores={Shrunk=1}] run function luigis_mansion:items/poison_mushroom/readd_inventory
scoreboard players remove @s[scores={Shrunk=1..}] Shrunk 1
scoreboard players reset @s[scores={Shrunk=0}] Shrunk
scoreboard players reset @s[scores={Shrunk=0}] ShrunkNr
function #luigis_mansion:player_tag_dialogs
execute if entity @s[tag=return_mario] as @a run function luigis_mansion:entities/e_gadd/return_mario

execute if entity @s[tag=!joined] run function luigis_mansion:other/join_world
execute if entity @s[scores={Offline=1}] run function luigis_mansion:other/log_on
execute if entity @s[scores={ChangedMansion=1}] run function luigis_mansion:entities/player/changed_mansion

execute unless score @s PrevRoom = @s Room run tag @s remove seen_room_name
scoreboard players operation @s PrevRoom = @s Room

execute unless entity @s[scores={Invulnerable=0..}] run scoreboard players set @s Invulnerable 0
scoreboard players remove @s[scores={Invulnerable=1..}] Invulnerable 1
execute if entity @s[scores={Health=1..}] store result score @s Damage run data get entity @s Health -1
scoreboard players operation @s[scores={Health=1..}] Damage += #100 Constants
execute if entity @s[scores={Damage=1..},gamemode=!spectator] run function luigis_mansion:entities/player/take_damage
effect give @s[scores={Food=3..}] minecraft:hunger 1 255 true
effect give @s[scores={Food=..0}] minecraft:saturation 1 0 true

scoreboard players set @s UseItem 0
scoreboard players add @s[scores={SneakTime=1..}] SneakTime 1
scoreboard players set @s[scores={Sneaking=1},tag=!was_sneaking] SneakTime 1
tag @s[scores={Sneaking=1}] add was_sneaking
tag @s[scores={Sneaking=0}] remove was_sneaking
scoreboard players set @s[scores={Sneaking=0,SneakTime=20..}] SneakTime 0
execute unless entity @s[scores={SneakTime=0..}] run scoreboard players set @s SneakTime 0
execute unless entity @s[scores={MaxHealth=100}] run scoreboard players add @s MaxHealthTime 1
execute if entity @s[scores={MaxHealthTime=1}] if score @s MaxHealth < @s Health run function luigis_mansion:entities/player/reduce_health_to_max
execute unless entity @s[scores={MaxHealth=100}] unless entity @s[scores={Walk=0..2,Run=0..2,Sneak=0}] run scoreboard players add @s MaxHealthTime 1
scoreboard players add @s[scores={MaxHealthTime=200}] MaxHealth 100
scoreboard players reset @s[scores={MaxHealthTime=200}] MaxHealthTime
scoreboard players set @s Sneak 0
scoreboard players set @s Sneaking 0
scoreboard players set @s Walk 0
scoreboard players set @s Run 0
scoreboard players set @s Jump 0
execute unless entity @s[scores={Room=1..}] run scoreboard players set @s LastFloor -2
execute store result score @s JumpHeight run data get entity @s Pos[1] 100

tag @a[tag=same_room] remove same_room
tag @s remove already_ticked

scoreboard players reset @s MirrorX
scoreboard players reset @s MirrorZ
scoreboard players reset @s LightX
scoreboard players reset @s LightY
scoreboard players reset @s LightZ