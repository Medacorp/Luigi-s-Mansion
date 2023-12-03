execute as @e[distance=..0.7,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] only luigis_mansion:vanilla/waluigi_pinball/bowling_ghost
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run tag @s[tag=!attack,tag=!grab_ball,tag=grabbed_ball] add collided
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] unless entity @e[tag=this_bowling_ball,limit=1] run data merge entity @s[tag=!attack,tag=!grab_ball] {Pose:{RightArm:[-90.0f,0.0f,-90.0f],LeftArm:[-90.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] unless entity @e[tag=this_bowling_ball,limit=1] run scoreboard players set @s[tag=!attack,tag=!grab_ball] AnimationProgress 0
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] unless entity @e[tag=this_bowling_ball,limit=1] run scoreboard players set @s[tag=!attack,tag=!grab_ball] ActionTime 0
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] unless entity @e[tag=this_bowling_ball,limit=1] run tag @s[tag=!attack] add grab_ball
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] unless entity @e[tag=this_bowling_ball,limit=1] run tag @s[tag=!attack] remove grabbed_ball
data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:walked_into",amount:0,knockback:"medium",attacker:-1,no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.collision
execute store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute as @a[distance=..0.7,gamemode=!spectator] run function luigis_mansion:entities/player/damage
data remove storage luigis_mansion:data damage