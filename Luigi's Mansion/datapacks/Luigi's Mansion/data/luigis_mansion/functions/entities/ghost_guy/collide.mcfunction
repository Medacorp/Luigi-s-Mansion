execute as @e[distance=..0.7,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] only luigis_mansion:challenges/waluigi_pinball ghost_guy
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] if entity @s[tag=!stop_dancing] run function luigis_mansion:entities/ghost_guy/stop_dancing
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run scoreboard players set @s[tag=!appear] ActionTime 0
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run scoreboard players set @s AnimationProgress 0
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run data merge entity @s {Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run teleport @s[tag=dodge] ~ ~1.1 ~
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run tag @s remove dodge
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run tag @s remove attack
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run tag @s remove complain
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run tag @s[tag=!appear] add collided
data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:walked_into",amount:0,knockback:"medium",attacker:-1,no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.damage.collision
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute as @a[distance=..0.7,gamemode=!spectator] run function luigis_mansion:entities/player/take_damage
data remove storage luigis_mansion:data damage