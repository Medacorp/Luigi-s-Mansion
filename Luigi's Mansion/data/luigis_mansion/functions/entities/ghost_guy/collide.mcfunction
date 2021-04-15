effect give @a[gamemode=!spectator,distance=..0.7] minecraft:instant_damage 1 0 true
scoreboard players set @a[gamemode=!spectator,distance=..0.7] ForcedDamage 4
advancement grant @a[gamemode=!spectator,distance=..0.7] only luigis_mansion:challenges/waluigi_pinball ghost_guy
execute if entity @s[tag=!stop_dancing] run function luigis_mansion:entities/ghost_guy/stop_dancing
scoreboard players set @s[tag=!appear] ActionTime 0
scoreboard players set @s AnimationProg 0
data merge entity @s {Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}
teleport @s[tag=dodge] ~ ~1.1 ~
tag @s remove dodge
tag @s remove attack
tag @s remove complain
tag @s[tag=!appear] add collided