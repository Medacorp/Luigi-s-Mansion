execute as @e[distance=..0.7,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
effect give @a[gamemode=!spectator,distance=..0.7] minecraft:instant_damage 1 0 true
scoreboard players set @a[gamemode=!spectator,distance=..0.7] ForcedDamage 4
advancement grant @a[gamemode=!spectator,distance=..0.7] only luigis_mansion:challenges/waluigi_pinball boo
scoreboard players set @s[tag=!attack,tag=!frozen] ActionTime 0
scoreboard players set @s[tag=!attack,tag=!frozen] AnimationProg 0
data merge entity @s[tag=!attack,tag=!frozen] {Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}
tag @s[tag=!attack,tag=!frozen] add laugh
tag @s[tag=!attack,tag=!frozen] remove taunt
tag @s[tag=!attack,tag=!frozen] add collided