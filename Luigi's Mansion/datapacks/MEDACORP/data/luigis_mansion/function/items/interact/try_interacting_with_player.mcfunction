tag @e[distance=..2,tag=player,tag=!spectator,limit=1] add interacting_with_me

execute if entity @e[tag=interacting_with_me,tag=!death_location,limit=1] run function luigis_mansion:entities/player/animation/set/talk
execute if entity @e[tag=interacting_with_me,tag=!death_location,limit=1] run tag @s add talk
execute if score #can_revive Selected matches 1 if entity @e[tag=interacting_with_me,tag=death_location,limit=1] run function luigis_mansion:entities/player/animation/set/revive
execute if score #can_revive Selected matches 1 if entity @e[tag=interacting_with_me,tag=death_location,limit=1] run tag @s add talk
execute if score #can_revive Selected matches 1 run data modify entity @e[tag=interacting_with_me,tag=death_location,limit=1] data.reviver set from entity @s UUID
execute if score #can_revive Selected matches 1 as @e[tag=interacting_with_me,tag=death_location,limit=1] run function luigis_mansion:entities/death_location/revive_player
tag @e[tag=interacting_with_me,limit=1] remove interacting_with_me