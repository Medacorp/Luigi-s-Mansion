execute if entity @s[tag=!dead] as @e[distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @s[tag=!dead] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"haunted_object"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/small"},attacker:-1}
execute if entity @s[tag=!dead] run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.collision
execute if entity @s[tag=!dead] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute if entity @s[tag=!dead] as @a[distance=..1,gamemode=!spectator,sort=nearest,limit=1] run function luigis_mansion:entities/player/damage
execute if entity @s[scores={Owner=-2147483648..}] run scoreboard players operation #temp GhostNr = @s Owner
execute if entity @s[scores={Owner=-2147483648..}] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run scoreboard players set @s AnimationProgress 0
execute if entity @s[tag=!dead,scores={Owner=-2147483648..}] if entity @a[distance=..1,tag=!spectator,limit=1] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run tag @s add laugh
execute if entity @s[tag=!dead,scores={Owner=-2147483648..}] unless entity @a[distance=..1,tag=!spectator,limit=1] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run tag @s add complain
execute if entity @s[tag=dead,scores={Owner=-2147483648..}] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run tag @s add complain
scoreboard players reset #temp GhostNr
scoreboard players operation #temp Room = @s Room
execute as @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}}]}] if score @s Room = #temp Room run scoreboard players set @s WaitTime 0
execute as @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}}]}] if score @s Room = #temp Room run scoreboard players set @s AnimationProgress 0
execute as @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}}]}] if score @s Room = #temp Room store result entity @s Pose.Head[0] float 1 run scoreboard players get @s HomeRotationY
scoreboard players reset @s Room
execute if entity @s[tag=!dead] store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute if entity @s[tag=!dead] store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute if entity @s[tag=!dead] store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute if entity @s[tag=!dead] store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRotationX
execute if entity @s[tag=!dead] store result entity @s Rotation[1] float 1 run scoreboard players get @s HomeRotationY
execute if entity @s[tag=!dead] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s HomeRotationY
data modify entity @s[tag=!dead] Pose.Head[1] set value 0.0f
data modify entity @s[tag=!dead] Pose.Head[2] set value 1.01f
tag @s remove moving
tag @s remove collision