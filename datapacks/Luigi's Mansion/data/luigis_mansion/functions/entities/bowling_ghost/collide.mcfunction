execute as @e[distance=..0.7,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
effect give @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] minecraft:instant_damage 1 0 true
scoreboard players set @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] ForcedDamage -1
advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] only luigis_mansion:challenges/waluigi_pinball bowling_ghost
execute as @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run function luigis_mansion:entities/player/knockback/medium
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run tag @s[tag=!attack,tag=!grab_ball,tag=grabbed_ball] add collided
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] unless entity @e[tag=this_bowling_ball,limit=1] run data merge entity @s[tag=!attack,tag=!grab_ball] {Pose:{RightArm:[-90.0f,0.0f,-90.0f],LeftArm:[-90.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] unless entity @e[tag=this_bowling_ball,limit=1] run scoreboard players set @s[tag=!attack,tag=!grab_ball] AnimationProg 0
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] unless entity @e[tag=this_bowling_ball,limit=1] run scoreboard players set @s[tag=!attack,tag=!grab_ball] ActionTime 0
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] unless entity @e[tag=this_bowling_ball,limit=1] run tag @s[tag=!attack] add grab_ball
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] unless entity @e[tag=this_bowling_ball,limit=1] run tag @s[tag=!attack] remove grabbed_ball