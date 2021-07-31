execute if score #clockwork_room_clock_3 Searched matches 1.. run scoreboard players operation #temp Searched = #clockwork_room_clock_3 Searched
execute if score #clockwork_room_clock_3 Searched matches 1.. run scoreboard players operation #temp Searched %= #30 Constants
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.clock.coo_coo block @a[scores={Room=49}] 684 121 -7 1
execute if score #temp Searched matches 20 run playsound luigis_mansion:block.clock.door block @a[scores={Room=49}] 684 121 -7 1
execute if score #clockwork_room_clock_3 Searched matches 1.. run scoreboard players operation #temp Searched = #clockwork_room_clock_3 Searched
execute if score #clockwork_room_clock_3 Searched matches 1.. run scoreboard players operation #temp Searched %= #200 Constants
execute if score #temp Searched matches 140 run playsound luigis_mansion:block.clock.music_box block @a[scores={Room=49}] 684 121 -7 1
scoreboard players reset #temp Searched
execute if score #clockwork_room_clock_3 Searched matches 800 run playsound luigis_mansion:block.clock.winding_up block @a[scores={Room=49}] 684 121 -7 1
execute if score #clockwork_room_clock_3 Searched matches 790 run playsound luigis_mansion:block.clock.winding_up block @a[scores={Room=49}] 684 121 -7 1
execute if score #clockwork_room_clock_3 Searched matches 780 run playsound luigis_mansion:block.clock.winding_up block @a[scores={Room=49}] 684 121 -7 1
execute if score #clockwork_room_clock_3 Searched matches 770 run playsound luigis_mansion:block.clock.winding_up block @a[scores={Room=49}] 684 121 -7 1
execute if score #clockwork_room_clock_3 Searched matches 40 run stopsound @a block luigis_mansion:block.clock.music_box
execute if score #clockwork_room_clock_3 Searched matches 40 run playsound luigis_mansion:block.clock.winding_down block @a[scores={Room=49}] 684 121 -7 1
execute if score #clockwork_room_clock_3 Searched matches 30 run playsound luigis_mansion:block.clock.winding_down block @a[scores={Room=49}] 684 121 -7 1
execute if score #clockwork_room_clock_3 Searched matches 20 run playsound luigis_mansion:block.clock.winding_down block @a[scores={Room=49}] 684 121 -7 1
execute if score #clockwork_room_clock_3 Searched matches 10 run playsound luigis_mansion:block.clock.winding_down block @a[scores={Room=49}] 684 121 -7 1
execute if score #clockwork_room_clock_3 Searched matches 1.. run scoreboard players remove #clockwork_room_clock_3 Searched 1