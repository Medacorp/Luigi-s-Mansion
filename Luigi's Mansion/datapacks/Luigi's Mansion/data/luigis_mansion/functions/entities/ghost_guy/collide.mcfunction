execute as @e[distance=..0.7,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
effect give @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] minecraft:instant_damage 1 0 true
scoreboard players set @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] ForcedDamage -1
advancement grant @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] only luigis_mansion:challenges/waluigi_pinball ghost_guy
execute as @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run function luigis_mansion:entities/player/knockback/medium
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] if entity @s[tag=!stop_dancing] run function luigis_mansion:entities/ghost_guy/stop_dancing
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run scoreboard players set @s[tag=!appear] ActionTime 0
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run scoreboard players set @s AnimationProg 0
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run data merge entity @s {Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run teleport @s[tag=dodge] ~ ~1.1 ~
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run tag @s remove dodge
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run tag @s remove attack
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run tag @s remove complain
execute if entity @a[tag=!spectator,scores={Invulnerable=0},distance=..0.7] run tag @s[tag=!appear] add collided