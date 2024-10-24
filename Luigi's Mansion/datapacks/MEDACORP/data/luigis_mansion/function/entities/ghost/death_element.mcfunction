tag @s add element_death
tag @s remove element_hurt
tag @s remove hurt
scoreboard players add @s DeathTime 1

execute if entity @s[scores={DeathTime=1}] unless entity @a[tag=expelling_me,limit=1] run function luigis_mansion:entities/ghost/find_expellers
execute if entity @s[scores={DeathTime=1}] run scoreboard players operation @s KillerID = @p[tag=expelling_me] ID
execute if entity @s[scores={DeathTime=1}] as @a[tag=expelling_me] run function luigis_mansion:entities/ghost/find_shooters
execute if entity @s[scores={DeathTime=1}] if entity @a[tag=!spectator,tag=shooter] run tag @a[tag=expelling_me,tag=!shooter] remove expelling_me
execute if entity @s[scores={DeathTime=1}] if entity @a[tag=!spectator,tag=shooter] run scoreboard players operation @s KillerID = @a[sort=furthest,limit=1,tag=!spectator,tag=expelling_me] ID
execute if entity @s[scores={DeathTime=1}] run tag @a remove shooter

scoreboard players operation #temp KillerID = @s KillerID
execute as @a[tag=expelling_me] if score @s ID = #temp KillerID run tag @s add killer
execute if entity @s[scores={DeathTime=1}] unless entity @a[tag=killer,limit=1] run function luigis_mansion:entities/ghost/cancel_death
scoreboard players reset #temp KillerID

tag @s[scores={DeathTime=1..}] add dying

execute if entity @s[scores={DeathTime=1,Room=1..},tag=!dead,tag=!remove_from_existence] run function luigis_mansion:entities/ghost/capture with entity @a[tag=killer,limit=1]
execute if entity @s[scores={DeathTime=1,Room=-2},tag=!dead,tag=!remove_from_existence] run scoreboard players add #training_room TrainingRoomScore 1
execute if entity @s[scores={DeathTime=1,Room=-2,TrainingRoomScore=-2147483648..},tag=!dead,tag=!remove_from_existence] run scoreboard players operation @a[tag=killer,limit=1] TrainingRoomScore += @s TrainingRoomScore
tag @s[scores={DeathTime=1},tag=!dead,tag=!remove_from_existence] add captured

execute if entity @s[scores={KillerID=-2147483648..}] run data modify entity @s data.attacked_by set value [0]
execute if entity @s[scores={KillerID=-2147483648..}] store result entity @s data.attacked_by[0] int 1 run scoreboard players get @s KillerID
tag @a[tag=killer,limit=1] add vaporizing_ghost
tag @a[tag=killer,limit=1] remove killer

execute if entity @s[scores={Health=0},tag=!dropped_loot_at_0] run function luigis_mansion:room/loot_chance_ghost_element
function luigis_mansion:other/drop_loot