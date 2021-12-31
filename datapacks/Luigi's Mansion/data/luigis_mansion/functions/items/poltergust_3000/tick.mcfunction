tag @s[tag=!poltergust_selected] remove expelling_dust
tag @s[tag=!poltergust_selected] remove expelling_fire
tag @s[tag=!poltergust_selected] remove expelling_water
tag @s[tag=!poltergust_selected] remove expelling_ice
tag @s[tag=expelling_dust] remove expelling_fire
tag @s[tag=expelling_dust] remove expelling_water
tag @s[tag=expelling_dust] remove expelling_ice
tag @s[tag=!poltergust_selected] remove vacuuming
tag @s[tag=!poltergust_selected] remove was_clogged
tag @s remove poltergust_selected
tag @s remove vacuuming_ghost
tag @s remove is_pulling
tag @s remove catch_portrait_ghost
tag @s remove catch_ghost
execute if entity @s[tag=poltergust_floor_sound,scores={Shrunk=0}] run playsound luigis_mansion:item.poltergust_3000.hit_floor player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=poltergust_floor_sound,scores={Shrunk=1..}] run playsound luigis_mansion:item.poltergust_3000.hit_floor player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[tag=poltergust_wall_sound,scores={Shrunk=0}] run playsound luigis_mansion:item.poltergust_3000.hit_wall player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=poltergust_wall_sound,scores={Shrunk=1..}] run playsound luigis_mansion:item.poltergust_3000.hit_wall player @a[tag=same_room] ~ ~ ~ 1 2
tag @s remove poltergust_floor_sound
tag @s remove poltergust_wall_sound
tag @s[tag=!poltergust_malfunction,nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000"}}}}] add poltergust_selected
tag @s[tag=!poltergust_selected] remove expelling
scoreboard players set @s[tag=!poltergust_selected] VacuumErrors 0
scoreboard players set @s[tag=!poltergust_selected] Pull 0
tag @s[tag=!poltergust_selected] remove made_error
tag @s[tag=poltergust_selected,scores={UseItem=1},tag=!expelling] add toggle_expelling
tag @s[tag=poltergust_selected,tag=toggle_expelling] add expelling
scoreboard players set @s[tag=poltergust_selected,tag=toggle_expelling] UseItem 0
tag @s[tag=poltergust_selected,tag=toggle_expelling] remove toggle_expelling
tag @s[tag=poltergust_selected,scores={UseItem=1},tag=expelling] remove expelling
scoreboard players set @s[scores={UseItem=1},tag=poltergust_selected] UseItem 0
execute if entity @s[tag=!grabbed,tag=!expelling,tag=poltergust_selected] positioned ~ ~0.5 ~ run function luigis_mansion:items/poltergust_3000/vacuuming
execute if entity @s[tag=!grabbed,tag=expelling,tag=poltergust_selected] positioned ~ ~0.5 ~ run function luigis_mansion:items/poltergust_3000/expelling
execute if entity @s[tag=!vacuuming_ghost] unless entity @a[tag=vacuuming_ghost,tag=same_room] as @a[tag=same_room,scores={MusicGroup=0,MusicType=28..29}] run function luigis_mansion:other/music/set/silence
scoreboard players set @s[tag=!vacuuming_ghost] GhostCount 0
scoreboard players set @s[tag=!vacuuming_ghost] Pull 0