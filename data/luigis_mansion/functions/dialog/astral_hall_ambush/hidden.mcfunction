scoreboard players add @s Time 1
execute if entity @s[scores={Time=2}] run stopsound @a[scores={Room=45}] music
execute if entity @s[scores={Time=2}] run scoreboard players set @a[scores={Room=45}] Music 140
execute if entity @s[scores={Time=3}] run playsound luigis_mansion:music.mansion.room.astral_hall music @a[scores={Room=35}] ~ ~ ~ 1000
execute if entity @s[scores={Time=20}] positioned 665 22 93 run function luigis_mansion:spawn_furniture/purple_candles
execute if entity @s[scores={Time=35}] positioned 669 22 95 run function luigis_mansion:spawn_furniture/purple_candles
execute if entity @s[scores={Time=50}] positioned 669 22 99 run function luigis_mansion:spawn_furniture/purple_candles
execute if entity @s[scores={Time=65}] positioned 665 22 101 run function luigis_mansion:spawn_furniture/purple_candles
execute if entity @s[scores={Time=80}] positioned 662 22 97 run function luigis_mansion:spawn_furniture/purple_candles
execute if entity @s[scores={Time=60}] positioned 665 22 93 run function luigis_mansion:spawn_furniture/unlit_candles
execute if entity @s[scores={Time=75}] positioned 669 22 95 run function luigis_mansion:spawn_furniture/unlit_candles
execute if entity @s[scores={Time=90}] positioned 669 22 99 run function luigis_mansion:spawn_furniture/unlit_candles
execute if entity @s[scores={Time=105}] positioned 665 22 101 run function luigis_mansion:spawn_furniture/unlit_candles
execute if entity @s[scores={Time=119}] positioned 662 22 97 run function luigis_mansion:spawn_furniture/unlit_candles
execute if entity @s[scores={Time=120}] positioned 665 22 93 run function luigis_mansion:spawn_furniture/lit_candles
execute if entity @s[scores={Time=120}] positioned 669 22 95 run function luigis_mansion:spawn_furniture/lit_candles
execute if entity @s[scores={Time=120}] positioned 669 22 99 run function luigis_mansion:spawn_furniture/lit_candles
execute if entity @s[scores={Time=120}] positioned 665 22 101 run function luigis_mansion:spawn_furniture/lit_candles
execute if entity @s[scores={Time=120}] positioned 662 22 97 run function luigis_mansion:spawn_furniture/lit_candles
execute if entity @s[scores={Time=120}] run function luigis_mansion:room/hidden/astral_hall/wave_1
teleport @s[x=666.5,y=20.5,z=97.5,distance=1..] 666 20.5 97
tag @s[scores={Time=120}] remove astral_hall_ambush
scoreboard players reset @s[scores={Time=120}] Time