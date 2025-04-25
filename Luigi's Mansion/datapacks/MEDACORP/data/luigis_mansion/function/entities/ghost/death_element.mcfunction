tag @s add element_death
tag @s remove element_hurt
tag @s remove hurt
tag @s add dying
scoreboard players add @s DeathTime 1

execute if entity @s[scores={DeathTime=1}] unless entity @e[tag=expelling_me,limit=1] run function luigis_mansion:entities/ghost/find_expellers
execute if entity @s[scores={DeathTime=1}] run scoreboard players operation @s KillerID = @e[tag=expelling_me,sort=nearest,limit=1] ID
execute if entity @s[scores={DeathTime=1}] as @e[tag=expelling_me] run function luigis_mansion:entities/ghost/find_shooters
execute if entity @s[scores={DeathTime=1}] if entity @e[tag=luigi,tag=shooter] run tag @e[tag=expelling_me,tag=!shooter] remove expelling_me
execute if entity @s[scores={DeathTime=1}] if entity @e[tag=luigi,tag=shooter] run scoreboard players operation @s KillerID = @e[tag=luigi,sort=furthest,limit=1,tag=expelling_me] ID
execute if entity @s[scores={DeathTime=1}] run tag @e[tag=shooter] remove shooter

scoreboard players operation #temp KillerID = @s KillerID
execute as @e[tag=player] if score @s ID = #temp KillerID run tag @s add killer
execute if entity @s[scores={DeathTime=1}] unless entity @e[tag=killer,limit=1] run function luigis_mansion:entities/ghost/cancel_death
scoreboard players reset #temp KillerID

execute if entity @s[scores={DeathTime=1,Room=1..},tag=!dead,tag=!remove_from_existence] run function luigis_mansion:entities/ghost/capture with entity @a[tag=killer,limit=1]
execute if entity @s[scores={DeathTime=1,Room=-2},tag=!dead,tag=!remove_from_existence] run scoreboard players add #training_room TrainingRoomScore 1
execute if entity @s[scores={DeathTime=1,Room=-2,TrainingRoomScore=-2147483648..},tag=!dead,tag=!remove_from_existence] run scoreboard players operation @a[tag=killer,limit=1] TrainingRoomScore += @s TrainingRoomScore
tag @s[scores={DeathTime=1},tag=!dead,tag=!remove_from_existence] add captured

execute if entity @s[scores={KillerID=-2147483648..}] run data modify entity @s data.attacked_by set value [0]
execute if entity @s[scores={KillerID=-2147483648..}] store result entity @s data.attacked_by[0] int 1 run scoreboard players get @s KillerID
tag @e[tag=luigi,tag=killer,limit=1] add vaporizing_ghost
tag @e[tag=killer] remove killer

execute if entity @s[scores={Health=0},tag=!dropped_loot_at_0] run function luigis_mansion:room/loot_chance_ghost_element
function luigis_mansion:other/drop_loot