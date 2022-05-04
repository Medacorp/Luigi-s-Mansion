execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ

execute at @s[scores={ScareTime=20,ScareType=1,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.scare.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ScareTime=20,ScareType=1,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.scare.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={ScareTime=20,ScareType=1,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.scare.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ScareTime=20,ScareType=1,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.scare.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={ScareTime=20,ScareType=1}] Sound 20
execute at @s[scores={ScareTime=1..,ScareType=1}] positioned as @e[type=minecraft:marker,tag=temp,limit=1] run teleport @s ~ 0 ~
execute at @s[scores={ScareTime=1..,ScareType=1}] positioned as @e[type=minecraft:marker,tag=temp,limit=1] run teleport @s ~ ~ ~
scoreboard players remove @s[scores={ScareType=1}] ScareTime 1

execute at @s[scores={ScareTime=100,ScareType=2,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.scare_freeze.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ScareTime=100,ScareType=2,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.scare_freeze.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={ScareTime=100,ScareType=2,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.scare_freeze.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ScareTime=100,ScareType=2,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.scare_freeze.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={ScareTime=100,ScareType=2}] Sound 60
execute at @s[scores={ScareTime=1..,ScareType=2}] positioned as @e[type=minecraft:marker,tag=temp,limit=1] run teleport @s ~ 0 ~
execute at @s[scores={ScareTime=1..,ScareType=2}] positioned as @e[type=minecraft:marker,tag=temp,limit=1] run teleport @s ~ ~ ~
execute at @s[scores={ScareTime=80,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-4.5
execute at @s[scores={ScareTime=79,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-9
execute at @s[scores={ScareTime=78,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-13.5
execute at @s[scores={ScareTime=77,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-18
execute at @s[scores={ScareTime=76,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-22.5
execute at @s[scores={ScareTime=75,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-27
execute at @s[scores={ScareTime=74,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-31.5
execute at @s[scores={ScareTime=73,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-36
execute at @s[scores={ScareTime=72,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-40.5
execute at @s[scores={ScareTime=71,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-45
execute at @s[scores={ScareTime=70,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-49.5
execute at @s[scores={ScareTime=69,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-54
execute at @s[scores={ScareTime=68,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-58.5
execute at @s[scores={ScareTime=67,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-63
execute at @s[scores={ScareTime=66,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-67.5
execute at @s[scores={ScareTime=65,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-72
execute at @s[scores={ScareTime=64,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-76.5
execute at @s[scores={ScareTime=63,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-81
execute at @s[scores={ScareTime=62,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-85.5
execute at @s[scores={ScareTime=..61,ScareType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-90
execute at @s[scores={ScareTime=80,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~4.5
execute at @s[scores={ScareTime=79,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~9
execute at @s[scores={ScareTime=78,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~13.5
execute at @s[scores={ScareTime=77,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~18
execute at @s[scores={ScareTime=76,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~22.5
execute at @s[scores={ScareTime=75,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~27
execute at @s[scores={ScareTime=74,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~31.5
execute at @s[scores={ScareTime=73,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~36
execute at @s[scores={ScareTime=72,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~40.5
execute at @s[scores={ScareTime=71,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~45
execute at @s[scores={ScareTime=70,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~49.5
execute at @s[scores={ScareTime=69,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~54
execute at @s[scores={ScareTime=68,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~58.5
execute at @s[scores={ScareTime=67,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~63
execute at @s[scores={ScareTime=66,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~67.5
execute at @s[scores={ScareTime=65,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~72
execute at @s[scores={ScareTime=64,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~76.5
execute at @s[scores={ScareTime=63,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~81
execute at @s[scores={ScareTime=62,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~85.5
execute at @s[scores={ScareTime=..61,ScareType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~90
scoreboard players remove @s[scores={ScareType=2}] ScareTime 1

execute at @s[scores={ScareTime=51,ScareType=3..4,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.scare_bashed.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ScareTime=51,ScareType=3..4,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.scare_bashed.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={ScareTime=51,ScareType=3..4,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.scare_bashed.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ScareTime=51,ScareType=3..4,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.scare_bashed.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={ScareTime=51,ScareType=3..4}] Sound 30
execute at @s[scores={ScareTime=22..,ScareType=3..4}] positioned as @e[type=minecraft:marker,tag=temp,limit=1] run teleport @s ~ 0 ~
execute at @s[scores={ScareTime=22..,ScareType=3..4}] positioned as @e[type=minecraft:marker,tag=temp,limit=1] run teleport @s ~ ~ ~
tag @s[scores={ScareTime=20..21,ScareType=3..4},tag=!force_moved] remove moved
tag @s[scores={ScareTime=20..21,ScareType=3..4}] remove force_moved
tag @s[scores={ScareTime=21,ScareType=3}] add moved
execute at @s[scores={ScareTime=21,ScareType=3..4,Sound=0,Shrunk=0},tag=moved] run playsound luigis_mansion:entity.player.scare_bashed.move player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ScareTime=21,ScareType=3..4,Sound=0,Shrunk=1..},tag=moved] run playsound luigis_mansion:entity.player.scare_bashed.move player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={ScareTime=21,ScareType=3..4,Sound=0},tag=moved] Sound 4
execute at @s[scores={ScareTime=21,ScareType=4}] positioned as @e[type=minecraft:marker,tag=temp,limit=1] run teleport @s ~ 0 ~
execute at @s[scores={ScareTime=21,ScareType=4}] positioned as @e[type=minecraft:marker,tag=temp,limit=1] run teleport @s ~ ~ ~
execute at @s[scores={ScareTime=21,ScareType=3}] unless entity @e[type=minecraft:marker,tag=temp,distance=..0.1,limit=1] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 positioned as @e[type=minecraft:marker,tag=temp,limit=1] run teleport @s ^ ^ ^0.1
execute at @s[scores={ScareTime=21,ScareType=3}] if entity @e[type=minecraft:marker,tag=temp,distance=..0.1,limit=1] rotated ~ 0 run teleport @s ^ ^ ^-0.1
execute at @s[scores={ScareTime=21,ScareType=3}] rotated ~ 0 unless block ^ ^ ^-0.5 #luigis_mansion:all_ignore run function luigis_mansion:entities/player/scared_bashed_turn
execute at @s[scores={ScareTime=..20,ScareType=3..4}] positioned as @e[type=minecraft:marker,tag=temp,limit=1] run teleport @s ~ 0 ~
execute at @s[scores={ScareTime=..20,ScareType=3..4}] positioned as @e[type=minecraft:marker,tag=temp,limit=1] run teleport @s ~ ~ ~
execute at @s[scores={ScareTime=20,ScareType=3..4,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ScareTime=20,ScareType=3..4,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={ScareTime=20,ScareType=3..4,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ScareTime=20,ScareType=3..4,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={ScareTime=20,ScareType=3..4}] Sound 20
scoreboard players remove @s[scores={ScareType=3..4,ScareTime=..20}] ScareTime 1
execute unless entity @s[scores={MaxHealthTime=1..}] run scoreboard players remove @s[scores={ScareType=3..4,ScareTime=21}] ScareTime 1
scoreboard players remove @s[scores={ScareType=3..4,ScareTime=22..}] ScareTime 1

execute at @s if block ~ ~1 ~ #luigis_mansion:all_ignore unless block ~ ~1.9 ~ #luigis_mansion:all_ignore run teleport @s ~ ~-0.16 ~
execute at @s unless block ~ ~ ~ #luigis_mansion:all_ignore if block ~ ~0.1 ~ #luigis_mansion:all_ignore run teleport @s ~ ~0.16 ~
execute at @s unless block ~0.3 ~ ~ #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~-0.16 ~ ~
execute at @s unless block ~-0.3 ~ ~ #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~0.16 ~ ~
execute at @s unless block ~ ~ ~0.3 #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~-0.16
execute at @s unless block ~ ~ ~-0.3 #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~0.16
kill @e[type=minecraft:marker,tag=temp,limit=1]
scoreboard players reset @s[scores={ScareTime=0}] ScareType
scoreboard players reset @s[scores={ScareTime=0}] ScareTime

function luigis_mansion:entities/player/animation/set/none