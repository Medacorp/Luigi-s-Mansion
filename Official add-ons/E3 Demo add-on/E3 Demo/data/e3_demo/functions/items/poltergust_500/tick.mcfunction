tag @s[tag=!poltergust_selected] remove vacuuming
tag @s[tag=!poltergust_selected] remove was_clogged
tag @s[tag=!capturing_ghost] remove poltergust_selected
tag @s[tag=capturing_ghost] add poltergust_selected
tag @s remove is_pulling
tag @s remove catch_portrait_ghost
tag @s remove catch_ghost
execute if entity @s[nbt=!{Inventory:[{tag:{luigis_mansion:{namespace:"e3_demo",id:"poltergust_500",gooigi_variant:1b}}}]},tag=gooigi] run function e3_demo:items/poltergust_500/gooigi
execute if entity @s[tag=poltergust_floor_sound,tag=!gooigi,scores={Shrunk=0}] run playsound e3_demo:item.poltergust_500.hit_floor player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=poltergust_wall_sound,tag=!gooigi,scores={Shrunk=0}] run playsound e3_demo:item.poltergust_500.hit_wall player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=poltergust_floor_sound,tag=!gooigi,scores={Shrunk=1..}] run playsound e3_demo:item.poltergust_500.hit_floor player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[tag=poltergust_wall_sound,tag=!gooigi,scores={Shrunk=1..}] run playsound e3_demo:item.poltergust_500.hit_wall player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[tag=poltergust_floor_sound,tag=gooigi,scores={Shrunk=0}] run playsound e3_demo:item.poltergust_500.hit_floor_gooigi player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=poltergust_wall_sound,tag=gooigi,scores={Shrunk=0}] run playsound e3_demo:item.poltergust_500.hit_wall_gooigi player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=poltergust_floor_sound,tag=gooigi,scores={Shrunk=1..}] run playsound e3_demo:item.poltergust_500.hit_floor_gooigi player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[tag=poltergust_wall_sound,tag=gooigi,scores={Shrunk=1..}] run playsound e3_demo:item.poltergust_500.hit_wall_gooigi player @a[tag=same_room] ~ ~ ~ 1 2
tag @s remove poltergust_floor_sound
tag @s remove poltergust_wall_sound
tag @s[tag=!poltergust_malfunction,nbt={SelectedItem:{tag:{luigis_mansion:{namespace:"e3_demo",id:"poltergust_500"}}}}] add poltergust_selected
tag @s[tag=!poltergust_selected] remove expelling
execute if entity @s[scores={OverheatMeter=300..}] run function e3_demo:items/poltergust_500/explode
execute if entity @s[tag=exploding_poltergust] run function e3_demo:items/poltergust_500/explode
scoreboard players set @s[tag=!poltergust_selected] VacuumErrors 0
tag @s[tag=!poltergust_selected] remove made_error
tag @s[tag=poltergust_selected,tag=!vacuuming_ghost,scores={UseItem=1..},tag=!expelling] add toggle_expelling
tag @s[tag=poltergust_selected,tag=!vacuuming_ghost,tag=toggle_expelling] add expelling
tag @s[tag=poltergust_selected,tag=!vacuuming_ghost,scores={UseItem=1..},tag=!toggle_expelling] remove expelling
tag @s[tag=toggle_expelling] remove toggle_expelling
scoreboard players set @s[scores={UseItem=1..},tag=poltergust_selected] UseItem 0
tag @s remove vacuuming_ghost
execute if entity @s[tag=!expelling,tag=poltergust_selected,tag=poltergust_grabbed] positioned ~ ~0.5 ~ run function e3_demo:items/poltergust_500/vacuuming
execute if entity @s[tag=expelling,tag=poltergust_selected,tag=poltergust_grabbed] positioned ~ ~0.5 ~ run function e3_demo:items/poltergust_500/expelling
execute if entity @s[tag=vaporizing_ghost] as @e[tag=captured,tag=element_death] at @s run function e3_demo:items/poltergust_500/vaporize
tag @s remove vaporizing_ghost
scoreboard players set @s[tag=!vacuuming_ghost] GhostCount 0