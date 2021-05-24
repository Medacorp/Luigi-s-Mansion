scoreboard players operation #temp PassiveNr = @s PassiveNr
execute as @e[tag=e_gadd_body] if score @s PassiveNr = #temp PassiveNr run tag @s add this_model
execute as @e[tag=e_gadd_head] if score @s PassiveNr = #temp PassiveNr run tag @s add this_model
execute as @e[tag=e_gadd_poltergust] if score @s PassiveNr = #temp PassiveNr run tag @s add this_model

execute if entity @s[scores={Room=0}] run function luigis_mansion:dialog/leaving_the_lab
execute if entity @s[scores={Room=-1}] if data storage luigis_mansion:data rooms.underground_lab{cleared:0b} run function luigis_mansion:dialog/the_mansion
execute if entity @s[scores={Room=-1}] if entity @a[scores={Room=-1}] if data storage luigis_mansion:data current_state.current_data.technical_data{released_boos_call:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{released_boos_talk:1b} run function luigis_mansion:dialog/released_boos/talk
execute if entity @s[scores={Room=-1},tag=talk] if data storage luigis_mansion:data rooms.underground_lab{cleared:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{released_boos_call:1b} run function luigis_mansion:dialog/underground_lab
execute if entity @s[scores={Room=-1},tag=talk] if data storage luigis_mansion:data rooms.underground_lab{cleared:1b} if data storage luigis_mansion:data current_state.current_data.technical_data{released_boos_call:1b,released_boos_talk:1b} run function luigis_mansion:dialog/underground_lab
execute if entity @s[scores={Room=-2}] run function luigis_mansion:dialog/training_room
execute if entity @s[scores={Room=-3},tag=portrificationizing] run function luigis_mansion:dialog/portrificationizing
execute if entity @s[scores={Room=-3},tag=return_dialog] run function luigis_mansion:dialog/ghost_portrificationizer_room/return
execute if entity @s[scores={Room=-3},tag=ending_dialog] run function luigis_mansion:dialog/ghost_portrificationizer_room/ending
execute if entity @s[scores={Room=-3},tag=mario_to_normal] run function luigis_mansion:dialog/mario_to_normal
execute if entity @s[scores={Room=-3},tag=!portrificationizing,tag=!return_dialog,tag=!ending_dialog,tag=!mario_to_normal,tag=!ending,tag=talk] if data storage luigis_mansion:data rooms.ghost_portrificationizer_room{cleared:0b} run function luigis_mansion:dialog/ghost_portrificationizer_room/talk
execute if entity @s[scores={Room=-3},tag=!portrificationizing,tag=!return_dialog,tag=!ending_dialog,tag=!mario_to_normal,tag=!ending,tag=talk] if data storage luigis_mansion:data rooms.ghost_portrificationizer_room{cleared:1b} run function luigis_mansion:dialog/ghost_portrificationizer_room/repeat
execute if entity @s[scores={Room=-4},tag=talk] if data storage luigis_mansion:data rooms.gallery{cleared:0b} run function luigis_mansion:dialog/gallery/talk
execute if entity @s[scores={Room=-4},tag=talk] if data storage luigis_mansion:data rooms.gallery{cleared:1b} run function luigis_mansion:dialog/gallery/repeat

execute facing entity @p[tag=same_room,gamemode=!spectator] feet rotated ~ 0 run teleport @s[tag=!portrificationizing,tag=!mario_to_normal,scores={Room=-4..-1}] ~ ~ ~ ~ ~

execute at @s[tag=listen] as @e[tag=this_model,tag=e_gadd_head,limit=1] run function luigis_mansion:animations/e_gadd/listen
execute at @s[tag=nod] as @e[tag=this_model,tag=e_gadd_head,limit=1] run function luigis_mansion:animations/e_gadd/nod
execute at @s[tag=shake] as @e[tag=this_model,tag=e_gadd_head,limit=1] run function luigis_mansion:animations/e_gadd/shake
execute at @s[tag=wave] as @e[tag=this_model,tag=e_gadd_head,limit=1] run function luigis_mansion:animations/e_gadd/wave
execute at @s[tag=walk] as @e[tag=this_model,tag=e_gadd_head,limit=1] run function luigis_mansion:animations/e_gadd/walk
execute at @s[tag=jump] as @e[tag=this_model,tag=e_gadd_head,limit=1] run function luigis_mansion:animations/e_gadd/jump
execute at @s[tag=walk_backwards] as @e[tag=this_model,tag=e_gadd_head,limit=1] run function luigis_mansion:animations/e_gadd/walk_backwards
execute at @s[tag=dragged] as @e[tag=this_model,tag=e_gadd_head,limit=1] run function luigis_mansion:animations/e_gadd/dragged
execute at @s[tag=hit] as @e[tag=this_model,tag=e_gadd_head,limit=1] run function luigis_mansion:animations/e_gadd/hit
execute at @s[tag=sitting] as @e[tag=this_model,tag=e_gadd_head,limit=1] run function luigis_mansion:animations/e_gadd/sitting
execute at @s[tag=get_up] as @e[tag=this_model,tag=e_gadd_head,limit=1] run function luigis_mansion:animations/e_gadd/get_up
execute at @s[tag=!listen,tag=!nod,tag=!shake,tag=!wave,tag=!walk,tag=!jump,tag=!poltergust,tag=!walk_backwards,tag=!dragged,tag=!hit,tag=!sitting,tag=!get_up] as @e[tag=this_model,tag=e_gadd_head,limit=1] run function luigis_mansion:animations/e_gadd/idle
execute at @s[tag=!listen,tag=!nod,tag=!shake,tag=!wave,tag=!walk,tag=!jump,tag=poltergust,tag=!walk_backwards,tag=!dragged,tag=!hit,tag=!sitting,tag=!get_up] as @e[tag=this_model,tag=e_gadd_head,limit=1] run function luigis_mansion:animations/e_gadd/poltergust

execute at @s[tag=poltergust] run data modify entity @e[tag=this_model,tag=e_gadd_poltergust,limit=1] HandItems[0] set value {id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:63,Unbreakable:1b,Damage:1,CustomModelData:0,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.poltergust_3000"}',Lore:['{"italic":false,"color":"gray","translate":"luigis_mansion:item.poltergust_3000.element","with":[{"translate":"luigis_mansion:item.poltergust_3000.element.none","color":"gray"}]}']},luigis_mansion:{id:"luigis_mansion:poltergust_3000",element:{type:0b}}}}
execute at @s[tag=!poltergust] run data modify entity @e[tag=this_model,tag=e_gadd_poltergust,limit=1] HandItems[0] set value {}
execute at @e[tag=this_model,tag=e_gadd_head,limit=1] run teleport @e[tag=this_model,tag=e_gadd_poltergust,limit=1] ^ ^ ^-0.1 ~ ~

execute unless entity @s[tag=!dead,tag=!remove_from_existence] run teleport @e[tag=this_model] ~ -100 ~
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_model] add dead

scoreboard players reset #temp PassiveNr
tag @e[tag=this_model] remove this_model
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall