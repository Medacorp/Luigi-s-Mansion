tag @s remove vacuuming
tag @s remove poltergust_selected
tag @s remove vacuuming_ghost
tag @s remove is_pulling
tag @s[tag=!poltergust_malfunction,nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000"}}}}] add poltergust_selected
tag @s[tag=!poltergust_selected] remove expelling
tag @s[tag=poltergust_selected,scores={UseItem=1},tag=!expelling] add toggle_expelling
tag @s[tag=poltergust_selected,tag=toggle_expelling] add expelling
scoreboard players set @s[tag=poltergust_selected,tag=toggle_expelling] UseItem 0
tag @s[tag=poltergust_selected,tag=toggle_expelling] remove toggle_expelling
tag @s[tag=poltergust_selected,scores={UseItem=1},tag=expelling] remove expelling
scoreboard players set @s[scores={UseItem=1},tag=poltergust_selected] UseItem 0
execute if entity @s[tag=!grabbed,tag=!expelling,tag=poltergust_selected] positioned ~ ~0.5 ~ run function luigis_mansion:items/poltergust_3000/vacuuming
execute if entity @s[tag=!grabbed,tag=expelling,tag=poltergust_selected] positioned ~ ~0.5 ~ run function luigis_mansion:items/poltergust_3000/expelling
execute if entity @s[scores={MusicType=28..29},tag=!poltergust_selected] run function luigis_mansion:other/music/set/silence
scoreboard players set @s[tag=!vacuuming_ghost] GhostCount 0
scoreboard players set @s[tag=!vacuuming_ghost] Pull 0