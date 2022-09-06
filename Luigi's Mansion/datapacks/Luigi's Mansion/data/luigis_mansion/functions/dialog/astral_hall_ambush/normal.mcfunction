scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..120}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if entity @s[scores={Dialog=2}] run stopsound @a[scores={Room=45}] music
execute if entity @s[scores={Dialog=2}] run scoreboard players set @a[scores={Room=45}] Music 140
execute if entity @s[scores={Dialog=3}] run playsound luigis_mansion:music.mansion.room.astral_hall music @a[scores={Room=45}] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=20}] positioned 665 22 -78 run function luigis_mansion:spawn_furniture/purple_candles
execute if entity @s[scores={Dialog=35}] positioned 669 22 -80 run function luigis_mansion:spawn_furniture/purple_candles
execute if entity @s[scores={Dialog=50}] positioned 669 22 -84 run function luigis_mansion:spawn_furniture/purple_candles
execute if entity @s[scores={Dialog=65}] positioned 665 22 -86 run function luigis_mansion:spawn_furniture/purple_candles
execute if entity @s[scores={Dialog=80}] positioned 662 22 -82 run function luigis_mansion:spawn_furniture/purple_candles
execute if entity @s[scores={Dialog=60}] positioned 665 22 -78 run function luigis_mansion:spawn_furniture/unlit_candles
execute if entity @s[scores={Dialog=75}] positioned 669 22 -80 run function luigis_mansion:spawn_furniture/unlit_candles
execute if entity @s[scores={Dialog=90}] positioned 669 22 -84 run function luigis_mansion:spawn_furniture/unlit_candles
execute if entity @s[scores={Dialog=105}] positioned 665 22 -86 run function luigis_mansion:spawn_furniture/unlit_candles
execute if entity @s[scores={Dialog=119}] positioned 662 22 -82 run function luigis_mansion:spawn_furniture/unlit_candles
execute if entity @s[scores={Dialog=120}] positioned 665 22 -78 run function luigis_mansion:spawn_furniture/lit_candles
execute if entity @s[scores={Dialog=120}] positioned 669 22 -80 run function luigis_mansion:spawn_furniture/lit_candles
execute if entity @s[scores={Dialog=120}] positioned 669 22 -84 run function luigis_mansion:spawn_furniture/lit_candles
execute if entity @s[scores={Dialog=120}] positioned 665 22 -86 run function luigis_mansion:spawn_furniture/lit_candles
execute if entity @s[scores={Dialog=120}] positioned 662 22 -82 run function luigis_mansion:spawn_furniture/lit_candles
execute if entity @s[scores={Dialog=120}] run function luigis_mansion:room/normal/astral_hall/wave_1
execute if entity @s[scores={Dialog=120}] run tag @a[tag=same_room,gamemode=!spectator,tag=high_health_idle,tag=!looking_at_map] add idle
tag @s[scores={Dialog=120}] remove astral_hall_ambush
scoreboard players set @s[scores={Dialog=120}] Dialog 0