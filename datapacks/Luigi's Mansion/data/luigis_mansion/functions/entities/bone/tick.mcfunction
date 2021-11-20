scoreboard players set #temp Move 4
execute if entity @s[tag=!spooky_bone] rotated ~ 0 run function luigis_mansion:entities/bone/move_forward
execute if entity @s[tag=spooky_bone] run function #luigis_mansion:entities/bone/spooky
execute if entity @s[tag=!spooky_bone] as @e[distance=..0.7,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if entity @s[tag=!spooky_bone] run effect give @a[distance=..0.7,tag=!spectator] minecraft:instant_damage 1 0 true
execute if entity @s[tag=!spooky_bone] run scoreboard players set @a[distance=..0.7,tag=!spectator] ForcedDamage -1
execute if entity @s[tag=!spooky_bone] as @a[distance=..0.7,tag=!spectator] run function luigis_mansion:entities/player/knockback/small
execute if entity @a[distance=..0.7,tag=!spectator] run tag @s[tag=!spooky_bone] add dead
execute if entity @s[tag=dead,scores={Owner=-2147483648..}] run scoreboard players operation #temp GhostNr = @s Owner
execute if entity @s[tag=dead,scores={Owner=-2147483648..}] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run scoreboard players set @s AnimationProg 0
execute if entity @s[tag=dead,scores={Owner=-2147483648..}] if entity @a[distance=..0.7,tag=!spectator,limit=1] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run tag @s add laugh
execute if entity @s[tag=dead,scores={Owner=-2147483648..}] unless entity @a[distance=..0.7,tag=!spectator,limit=1] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run tag @s add complain
scoreboard players reset #temp GhostID
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall