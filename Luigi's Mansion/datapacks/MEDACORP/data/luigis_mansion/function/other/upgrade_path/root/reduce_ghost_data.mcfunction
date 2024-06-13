execute store result score #temp2 Time run data get storage luigis_mansion:data ghosts_caught[-1].total
execute store result storage luigis_mansion:data new_ghosts_caught.total int 1 run scoreboard players operation #temp Time += #temp2 Time
execute if score #temp Time matches ..-1 store result storage luigis_mansion:data new_ghosts_caught.total int 1 run scoreboard players set #temp Time 2147483647
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.blue_blaze run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/blue_blaze
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.blue_mouse run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/blue_mouse
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.blue_twirler run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/blue_twirler
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.boo run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/boo
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.bowling_ghost run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/bowling_ghost
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.ceiling_surprise run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/ceiling_surprise
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.cinema_ghost run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/cinema_ghost
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.dancing_ghost_guy run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/dancing_ghost_guy
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.elemental_ghost run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/elemental_ghost
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.fake_door run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/fake_door
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.flash run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/flash
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.garbage_can_ghost run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/garbage_can_ghost
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.ghost_guy run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/ghost_guy
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.gold_ghost run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/gold_ghost
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.gold_mouse run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/gold_mouse
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.grabbing_ghost run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/grabbing_ghost
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.green_flying_fish run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/green_flying_fish
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.haunted_object run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/haunted_object
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.mirror_ghost run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/mirror_ghost
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.mr_bones run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/mr_bones
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.pink_flying_fish run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/pink_flying_fish
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.portrait_ghost run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/portrait_ghost
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.purple_bat run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/purple_bat
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.purple_bomber run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/purple_bomber
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.purple_mouse run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/purple_mouse
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.purple_puncher run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/purple_puncher
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.red_grabbing_ghost run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/red_grabbing_ghost
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.shining_ghost run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/shining_ghost
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.spark run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/spark
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.speedy_spirit run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/speedy_spirit
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.temper_terror run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/temper_terror
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.waiter run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/waiter
execute if data storage luigis_mansion:data ghosts_caught[-1].caught.yellow_bat run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data/yellow_bat
data remove storage luigis_mansion:data ghosts_caught[0]
execute if data storage luigis_mansion:data ghosts_caught[0] run function luigis_mansion:other/upgrade_path/data/root/reduce_ghost_data