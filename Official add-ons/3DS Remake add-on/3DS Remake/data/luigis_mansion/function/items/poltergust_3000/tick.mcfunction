tag @s[tag=!poltergust_selected] remove expelling_dust
tag @s[tag=!poltergust_selected] remove expelling_fire
tag @s[tag=!poltergust_selected] remove expelling_water
tag @s[tag=!poltergust_selected] remove expelling_ice
tag @s[tag=expelling_dust] remove expelling_fire
tag @s[tag=expelling_dust] remove expelling_water
tag @s[tag=expelling_dust] remove expelling_ice
tag @s[tag=!poltergust_selected] remove vacuuming
tag @s[tag=!poltergust_selected] remove was_clogged
tag @s[tag=!capturing_ghost] remove poltergust_selected
tag @s[tag=capturing_ghost] add poltergust_selected
tag @s[tag=capturing_ghost] remove expelling
tag @s remove exploding_poltergust_effect
tag @s remove is_pulling
tag @s remove catch_portrait_ghost
tag @s remove catch_ghost
execute if entity @s[nbt=!{data:{inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"poltergust_3000",gooigi_variant:1b}}}]}},tag=gooigi] run function 3ds_remake:items/poltergust_3000/gooigi
execute if entity @s[tag=poltergust_floor_sound,tag=!gooigi] run function luigis_mansion:entities/luigi/make_sound/simple {sound:"luigis_mansion:item.poltergust_3000.hit_floor"}
execute if entity @s[tag=poltergust_wall_sound,tag=!gooigi] run function luigis_mansion:entities/luigi/make_sound/simple {sound:"luigis_mansion:item.poltergust_3000.hit_wall"}
execute if entity @s[tag=poltergust_floor_sound,tag=gooigi] run function luigis_mansion:entities/luigi/make_sound/simple {sound:"3ds_remake:item.poltergust_3000.hit_floor_gooigi"}
execute if entity @s[tag=poltergust_wall_sound,tag=gooigi] run function luigis_mansion:entities/luigi/make_sound/simple {sound:"3ds_remake:item.poltergust_3000.hit_wall_gooigi"}
tag @s remove poltergust_floor_sound
tag @s remove poltergust_wall_sound
execute if entity @s[tag=exploding_poltergust] run function luigis_mansion:items/poltergust_3000/explode
tag @s[tag=!door_animation,nbt={data:{selected_item:{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"poltergust_3000"}}}}}] add poltergust_selected
tag @s[tag=!poltergust_selected] remove expelling
tag @s[tag=poltergust_selected,tag=!vacuuming_ghost,scores={UseItem=1..},tag=!expelling] add toggle_expelling
tag @s[tag=poltergust_selected,tag=!vacuuming_ghost,tag=toggle_expelling] add expelling
tag @s[tag=poltergust_selected,tag=!vacuuming_ghost,scores={UseItem=1..},tag=!toggle_expelling] remove expelling
tag @s[tag=toggle_expelling] remove toggle_expelling
scoreboard players set @s[scores={UseItem=1..},tag=poltergust_selected] UseItem 0
tag @s remove vacuuming_ghost
execute if entity @s[tag=clear_elemental_meter] run function luigis_mansion:items/poltergust_3000/clear_element
execute if entity @s[tag=idle,tag=poltergust_selected,tag=poltergust_grabbed,tag=!disable_poltergust] run function luigis_mansion:entities/luigi/animation/set/none
execute if entity @s[tag=!expelling,tag=poltergust_selected,tag=poltergust_grabbed,tag=!disable_poltergust] positioned ~ ~0.5 ~ run function luigis_mansion:items/poltergust_3000/vacuuming
execute if entity @s[tag=expelling,tag=poltergust_selected,tag=poltergust_grabbed,tag=!disable_poltergust] positioned ~ ~0.5 ~ run function luigis_mansion:items/poltergust_3000/expelling
execute if entity @s[tag=vaporizing_ghost] as @e[tag=captured,tag=element_death,tag=same_room] at @s run function luigis_mansion:items/poltergust_3000/vaporize
tag @s remove vaporizing_ghost
tag @s remove vacuuming_fabric
tag @s remove vacuuming_poster
scoreboard players set @s[tag=!vacuuming_ghost] GhostCount 0