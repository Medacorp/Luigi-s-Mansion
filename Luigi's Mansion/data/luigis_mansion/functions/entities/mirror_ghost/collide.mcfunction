effect give @a[gamemode=!spectator,distance=..0.7] minecraft:instant_damage 1 0 true
scoreboard players set @a[gamemode=!spectator,distance=..0.7] ForcedDamage 4
advancement grant @a[gamemode=!spectator,distance=..0.7] only luigis_mansion:challenges/waluigi_pinball mirror_ghost
scoreboard players set @s[tag=!appear] ActionTime 0
tag @s remove laugh
tag @s remove complain
tag @s remove attack
tag @s[tag=!appear] add collided