tag @e[tag=luigi,tag=!me,distance=..2,limit=1] add interacting_with_me

execute if entity @e[tag=interacting_with_me,scores={Health=1..},limit=1] if entity @s[tag=!gooigi] run function luigis_mansion:entities/luigi/animation/set/talk
execute if entity @e[tag=interacting_with_me,scores={Health=1..},limit=1] run tag @s[tag=!gooigi] add talk
execute if score #can_revive Selected matches 1 if entity @e[tag=interacting_with_me,tag=!gooigi,scores={DeathTime=60..},limit=1] run function luigis_mansion:entities/luigi/animation/set/revive
execute if score #can_revive Selected matches 1 if entity @e[tag=interacting_with_me,tag=!gooigi,scores={DeathTime=60..},limit=1] run tag @s add talk
execute if score #can_revive Selected matches 1 run data modify entity @e[tag=interacting_with_me,tag=!gooigi,scores={DeathTime=60..},limit=1] data.reviver set from entity @a[tag=this_player,limit=1] UUID
tag @e[tag=interacting_with_me,limit=1] remove interacting_with_me