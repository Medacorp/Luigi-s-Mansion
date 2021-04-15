scoreboard players add @s Time 1
execute if entity @s[scores={Time=2}] run stopsound @a[scores={Room=35}] music
execute if entity @s[scores={Time=2}] run scoreboard players set @a[scores={Room=35}] Music 140
execute if entity @s[scores={Time=3}] run playsound luigis_mansion:music.mansion.room.astral_hall music @a[scores={Room=35}] ~ ~ ~ 1000
execute if entity @s[scores={Time=20}] positioned 676 113 31 run function luigis_mansion:blocks/purple_candles
execute if entity @s[scores={Time=35}] positioned 680 113 33 run function luigis_mansion:blocks/purple_candles
execute if entity @s[scores={Time=50}] positioned 680 113 37 run function luigis_mansion:blocks/purple_candles
execute if entity @s[scores={Time=65}] positioned 676 113 39 run function luigis_mansion:blocks/purple_candles
execute if entity @s[scores={Time=80}] positioned 673 113 35 run function luigis_mansion:blocks/purple_candles
execute if entity @s[scores={Time=60}] positioned 676 113 31 run function luigis_mansion:blocks/unlit_candles
execute if entity @s[scores={Time=75}] positioned 680 113 33 run function luigis_mansion:blocks/unlit_candles
execute if entity @s[scores={Time=90}] positioned 680 113 37 run function luigis_mansion:blocks/unlit_candles
execute if entity @s[scores={Time=105}] positioned 676 113 39 run function luigis_mansion:blocks/unlit_candles
execute if entity @s[scores={Time=119}] positioned 673 113 35 run function luigis_mansion:blocks/unlit_candles
execute if entity @s[scores={Time=120}] positioned 676 113 31 run function luigis_mansion:blocks/lit_candles
execute if entity @s[scores={Time=120}] positioned 680 113 33 run function luigis_mansion:blocks/lit_candles
execute if entity @s[scores={Time=120}] positioned 680 113 37 run function luigis_mansion:blocks/lit_candles
execute if entity @s[scores={Time=120}] positioned 676 113 39 run function luigis_mansion:blocks/lit_candles
execute if entity @s[scores={Time=120}] positioned 673 113 35 run function luigis_mansion:blocks/lit_candles
execute if entity @s[scores={Time=120}] run function luigis_mansion:room/hidden/astral_hall/wave_1
teleport @s[x=677.5,y=111.5,z=35.5,distance=1..] 677 111.5 35
tag @s[scores={Time=120}] remove astral_hall_ambush
scoreboard players reset @s[scores={Time=120}] Time