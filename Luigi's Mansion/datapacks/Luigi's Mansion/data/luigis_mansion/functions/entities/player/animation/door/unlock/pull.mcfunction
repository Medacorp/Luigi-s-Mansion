execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s HomeRotation
execute at @e[tag=home,limit=1] run tp @s[scores={IdleTime=..-2}] ~ ~ ~ ~ 40
execute at @e[tag=home,limit=1] run tp @s[scores={IdleTime=-1}] ~ ~ ~ ~ 0
kill @e[tag=home,limit=1]
scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:item.key.grab block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=80}] run playsound luigis_mansion:item.key.use block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s Sound 10
scoreboard players set @s Invulnerable 1000
scoreboard players set @s[scores={IdleTime=-1}] Invulnerable 0
scoreboard players reset @s[scores={IdleTime=-1}] AnimationProgress
execute unless entity @a[tag=!spectator,distance=0.1..,limit=1] run scoreboard players set #freeze_timer Selected 1
execute if entity @s[scores={IdleTime=-1}] run function luigis_mansion:entities/player/animation/set/door/open/pull