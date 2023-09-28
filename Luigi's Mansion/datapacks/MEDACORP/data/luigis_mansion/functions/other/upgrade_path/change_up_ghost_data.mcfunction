data modify storage luigis_mansion:data new_ghosts_caught append from storage luigis_mansion:data ghosts_caught[0]
data modify storage luigis_mansion:data new_ghosts_caught[-1].caught set value {}
data modify storage luigis_mansion:data new_ghosts_caught[-1].caught.luigis_mansion set from storage luigis_mansion:data ghosts_caught[0].caught
data remove storage luigis_mansion:data new_ghosts_caught[-1].caught.luigis_mansion.portrait_ghost
data modify storage luigis_mansion:data new_ghosts_caught[-1].caught.luigis_mansion.neville set from storage luigis_mansion:data ghosts_caught[0].caught.portrait_ghost
data remove storage luigis_mansion:data ghosts_caught[0]
execute if data storage luigis_mansion:data ghosts_caught[0] run function luigis_mansion:other/upgrade_path/change_up_ghost_data