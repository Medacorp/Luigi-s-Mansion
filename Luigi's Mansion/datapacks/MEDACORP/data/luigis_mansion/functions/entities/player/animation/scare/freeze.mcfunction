execute if entity @s[scores={IdleTime=-100,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.scare_freeze.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-100,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.scare_freeze.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={IdleTime=-100,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.scare_freeze.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-100,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.scare_freeze.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=-100}] Sound 60
execute at @s[scores={IdleTime=-80},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-4.5
execute at @s[scores={IdleTime=-79},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-9
execute at @s[scores={IdleTime=-78},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-13.5
execute at @s[scores={IdleTime=-77},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-18
execute at @s[scores={IdleTime=-76},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-22.5
execute at @s[scores={IdleTime=-75},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-27
execute at @s[scores={IdleTime=-74},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-31.5
execute at @s[scores={IdleTime=-73},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-36
execute at @s[scores={IdleTime=-72},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-40.5
execute at @s[scores={IdleTime=-71},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-45
execute at @s[scores={IdleTime=-70},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-49.5
execute at @s[scores={IdleTime=-69},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-54
execute at @s[scores={IdleTime=-68},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-58.5
execute at @s[scores={IdleTime=-67},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-63
execute at @s[scores={IdleTime=-66},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-67.5
execute at @s[scores={IdleTime=-65},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-72
execute at @s[scores={IdleTime=-64},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-76.5
execute at @s[scores={IdleTime=-63},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-81
execute at @s[scores={IdleTime=-62},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-85.5
execute at @s[scores={IdleTime=-61..},tag=!flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-90
execute at @s[scores={IdleTime=-80},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~4.5
execute at @s[scores={IdleTime=-79},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~9
execute at @s[scores={IdleTime=-78},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~13.5
execute at @s[scores={IdleTime=-77},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~18
execute at @s[scores={IdleTime=-76},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~22.5
execute at @s[scores={IdleTime=-75},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~27
execute at @s[scores={IdleTime=-74},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~31.5
execute at @s[scores={IdleTime=-73},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~36
execute at @s[scores={IdleTime=-72},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~40.5
execute at @s[scores={IdleTime=-71},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~45
execute at @s[scores={IdleTime=-70},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~49.5
execute at @s[scores={IdleTime=-69},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~54
execute at @s[scores={IdleTime=-68},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~58.5
execute at @s[scores={IdleTime=-67},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~63
execute at @s[scores={IdleTime=-66},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~67.5
execute at @s[scores={IdleTime=-65},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~72
execute at @s[scores={IdleTime=-64},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~76.5
execute at @s[scores={IdleTime=-63},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~81
execute at @s[scores={IdleTime=-62},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~85.5
execute at @s[scores={IdleTime=-61..},tag=flipped_gravity] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~90
tag @s remove vacuuming_ghost