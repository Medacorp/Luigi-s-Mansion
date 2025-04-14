scoreboard players add @s DeathTime 1

execute if entity @s[scores={DeathTime=1}] run scoreboard players operation @s KillerID = @e[tag=vacuuming_me,sort=nearest,limit=1] ID

scoreboard players operation #temp KillerID = @s KillerID
execute as @e[tag=player] if score @s ID = #temp KillerID run tag @s add killer
execute if entity @s[scores={DeathTime=1}] unless entity @e[tag=killer,limit=1] run function luigis_mansion:entities/ghost/cancel_death
scoreboard players reset #temp KillerID
execute at @s facing entity @e[tag=luigi,tag=killer,limit=1] feet run teleport @s ~ ~ ~ ~-180 0

execute at @s[scores={DeathTime=1..}] facing entity @e[tag=luigi,tag=killer,limit=1] feet run teleport @s ^ ^ ^0.4
tag @s[scores={DeathTime=1..}] add dying

execute if entity @s[scores={Health=0},tag=!dropped_loot_at_0] run function luigis_mansion:room/loot_chance_ghost

execute at @s[scores={DeathTime=2..,Room=1..,Health=-2147483648..},tag=!dead,tag=!remove_from_existence] if entity @e[tag=luigi,tag=killer,distance=..0.7] run function luigis_mansion:entities/ghost/capture with entity @a[tag=killer,limit=1]
execute if entity @s[scores={DeathTime=1,Room=1..},tag=!dead,tag=!remove_from_existence] unless entity @s[scores={Health=-2147483648..}] run function luigis_mansion:entities/ghost/capture with entity @a[tag=killer,limit=1]
execute at @s[scores={DeathTime=2..,Room=-2,Health=-2147483648..},tag=!dead,tag=!remove_from_existence] if entity @e[tag=luigi,tag=killer,distance=..0.7] run scoreboard players add #training_room TrainingRoomScore 1
execute if entity @s[scores={DeathTime=1,Room=-2},tag=!dead,tag=!remove_from_existence] unless entity @s[scores={Health=-2147483648..}] run scoreboard players add #training_room TrainingRoomScore 1
execute at @s[scores={DeathTime=2..,Room=-2,Health=-2147483648..,TrainingRoomScore=-2147483648..},tag=!dead,tag=!remove_from_existence] run scoreboard players operation @a[tag=killer,distance=..0.7] TrainingRoomScore += @s TrainingRoomScore
execute if entity @s[scores={DeathTime=1,Room=-2,TrainingRoomScore=-2147483648..},tag=!dead,tag=!remove_from_existence] unless entity @s[scores={Health=-2147483648..}] run scoreboard players operation @a[tag=killer,limit=1] TrainingRoomScore += @s TrainingRoomScore
execute at @s[scores={DeathTime=2..},tag=!dead,tag=!remove_from_existence] if entity @e[tag=luigi,tag=killer,distance=..0.7] run tag @s add captured
execute if entity @s[scores={DeathTime=1},tag=!dead,tag=!remove_from_existence] unless entity @s[scores={Health=-2147483648..}] run tag @s add captured

execute if entity @s[scores={KillerID=-2147483648..}] run data modify entity @s data.attacked_by set value [0]
execute if entity @s[scores={KillerID=-2147483648..}] store result entity @s data.attacked_by[0] int 1 run scoreboard players get @s KillerID
execute if entity @s[tag=dying] run tag @e[tag=luigi,tag=killer,limit=1] add capturing_ghost
tag @e[tag=killer] remove killer

execute if entity @s[tag=captured] if data entity @s data.loot run function luigis_mansion:other/drop_loot