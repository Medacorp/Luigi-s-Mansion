scoreboard players set @s[tag=!appear] ActionTime 0
tag @s[tag=!appear] add collided
advancement grant @a[tag=!spectator,distance=..0.7] only luigis_mansion:challenges/waluigi_pinball ceiling_surprise
execute as @a[tag=!spectator,distance=..0.7] run function luigis_mansion:entities/player/knockback/medium