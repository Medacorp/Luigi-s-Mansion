tag @s[tag=!visible,tag=talk] remove talk
execute if entity @s[tag=!visible] run function luigis_mansion:entities/madame_clairvoya/shine
execute if entity @s[tag=visible,tag=!vanish] run function luigis_mansion:entities/madame_clairvoya/tick/hidden/visible
tag @s[scores={VulnerableTime=1..},tag=talk] remove talk

execute at @s[tag=nod] as @e[tag=this_model,tag=madame_clairvoya_head,limit=1] run function luigis_mansion:animations/madame_clairvoya/nod
execute at @s[tag=listen] as @e[tag=this_model,tag=madame_clairvoya_head,limit=1] run function luigis_mansion:animations/madame_clairvoya/listen
execute at @s[tag=explain] as @e[tag=this_model,tag=madame_clairvoya_head,limit=1] run function luigis_mansion:animations/madame_clairvoya/explain
execute at @s[tag=power] as @e[tag=this_model,tag=madame_clairvoya_head,limit=1] run function luigis_mansion:animations/madame_clairvoya/power
execute at @s[tag=power] positioned ^0.4 ^1.4 ^0.5 run particle minecraft:dust 1 0 1 1 ~ ~ ~ 0 0 0 0 1
execute at @s[tag=power] positioned ^-0.4 ^1.4 ^0.5 run particle minecraft:dust 1 0 1 1 ~ ~ ~ 0 0 0 0 1
execute at @s[tag=laugh,tag=!vanish] as @e[tag=this_model,tag=madame_clairvoya_head,limit=1] run function luigis_mansion:animations/madame_clairvoya/laugh
execute at @s[tag=!nod,tag=!listen,tag=!explain,tag=!power,tag=!laugh,tag=!vanish] as @e[tag=this_model,tag=madame_clairvoya_head,limit=1] run function luigis_mansion:animations/madame_clairvoya/idle