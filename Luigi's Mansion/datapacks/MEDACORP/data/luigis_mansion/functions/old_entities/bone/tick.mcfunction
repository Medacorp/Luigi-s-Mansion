scoreboard players set #temp Move 20
execute unless entity @s[scores={Sound=0..}] run scoreboard players set @s Sound 4
execute if entity @s[tag=!spooky_bone] rotated ~ 0 run function luigis_mansion:old_entities/bone/move_forward
execute if entity @s[tag=spooky_bone] run function #luigis_mansion:entities/bone/spooky
execute if entity @s[tag=!spooky_bone] as @e[distance=..0.7,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @a[distance=..0.7,tag=!spectator] run tag @s[tag=!spooky_bone] add dead
execute if entity @s[tag=dead] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"bone"},amount:5,animation:"knockback/small",no_delete:1b}
execute if entity @s[tag=dead] if data entity @s ArmorItems[3].tag.luigis_mansion.damage.attack run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
execute if entity @s[tag=dead] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s Owner
execute if entity @s[tag=dead] as @a[distance=..0.7,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute if entity @s[tag=dead] run data remove storage luigis_mansion:data damage
execute if entity @s[tag=dead,scores={Owner=-2147483648..}] run scoreboard players operation #temp GhostNr = @s Owner
execute if entity @s[tag=dead,scores={Owner=-2147483648..}] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run scoreboard players set @s AnimationProgress 0
execute if entity @s[tag=dead,scores={Owner=-2147483648..}] if entity @a[distance=..0.7,tag=!spectator,limit=1] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run tag @s add laugh
execute if entity @s[tag=dead,scores={Owner=-2147483648..}] unless entity @a[distance=..0.7,tag=!spectator,limit=1] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run tag @s add complain
scoreboard players reset #temp GhostID
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall