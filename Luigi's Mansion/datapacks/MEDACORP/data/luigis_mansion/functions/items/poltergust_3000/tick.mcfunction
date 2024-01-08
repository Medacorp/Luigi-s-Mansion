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
tag @s remove is_pulling
tag @s remove catch_portrait_ghost
tag @s remove catch_ghost
execute if entity @s[tag=poltergust_floor_sound,scores={Shrunk=0}] run playsound luigis_mansion:item.poltergust_3000.hit_floor player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=poltergust_floor_sound,scores={Shrunk=1..}] run playsound luigis_mansion:item.poltergust_3000.hit_floor player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[tag=poltergust_wall_sound,scores={Shrunk=0}] run playsound luigis_mansion:item.poltergust_3000.hit_wall player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=poltergust_wall_sound,scores={Shrunk=1..}] run playsound luigis_mansion:item.poltergust_3000.hit_wall player @a[tag=same_room] ~ ~ ~ 1 2
tag @s remove poltergust_floor_sound
tag @s remove poltergust_wall_sound
execute if entity @s[tag=exploding_poltergust] run function luigis_mansion:items/poltergust_3000/explode
execute if entity @s[scores={Animation=1..},tag=!idle,nbt={Inventory:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"poltergust_3000"}}}]}] unless entity @s[scores={Animation=39}] unless entity @s[scores={Animation=27..28}] run tag @s add turned_off_for_animation
tag @s[tag=!turned_off_for_animation,tag=!poltergust_malfunction,nbt={SelectedItem:{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"poltergust_3000"}}}}] add poltergust_selected
tag @s remove turned_off_for_animation
execute if entity @s[nbt={Inventory:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"poltergust_3000",sync_element:1b}}}]}] run function luigis_mansion:items/poltergust_3000/sync_element
tag @s[tag=!poltergust_selected] remove expelling
scoreboard players set @s[tag=!poltergust_selected] VacuumErrors 0
scoreboard players set @s[tag=!poltergust_selected,scores={Animation=-4}] Animation 0
tag @s[tag=!poltergust_selected] remove made_error
tag @s[tag=poltergust_selected,tag=!vacuuming_ghost,scores={UseItem=1..},tag=!expelling] add toggle_expelling
tag @s[tag=poltergust_selected,tag=!vacuuming_ghost,tag=toggle_expelling] add expelling
tag @s[tag=poltergust_selected,tag=!vacuuming_ghost,scores={UseItem=1..},tag=!toggle_expelling] remove expelling
tag @s[tag=toggle_expelling] remove toggle_expelling
scoreboard players set @s[scores={UseItem=1..},tag=poltergust_selected] UseItem 0
tag @s remove vacuuming_ghost
execute if entity @s[tag=!expelling,tag=poltergust_selected,tag=poltergust_grabbed] positioned ~ ~0.5 ~ run function luigis_mansion:items/poltergust_3000/vacuuming
execute if entity @s[tag=expelling,tag=poltergust_selected,tag=poltergust_grabbed] positioned ~ ~0.5 ~ run function luigis_mansion:items/poltergust_3000/expelling
execute if entity @s[tag=vaporizing_ghost] as @e[tag=captured,tag=element_death,tag=same_room] at @s run function luigis_mansion:items/poltergust_3000/vaporize
tag @s remove vaporizing_ghost
scoreboard players set @s[tag=!vacuuming_ghost] GhostCount 0
scoreboard players set @s[tag=!vacuuming_ghost,scores={Animation=-4}] Animation 0