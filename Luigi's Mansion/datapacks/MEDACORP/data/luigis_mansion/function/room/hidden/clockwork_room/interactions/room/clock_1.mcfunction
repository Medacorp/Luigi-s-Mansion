execute if score #clockwork_room_clock_1 Searched matches 1.. run scoreboard players operation #temp Searched = #clockwork_room_clock_1 Searched
execute if score #clockwork_room_clock_1 Searched matches 1.. run scoreboard players operation #temp Searched %= #50 Constants
execute if score #temp Searched matches 0 run playsound luigis_mansion:furniture.clock.whistle_down block @a[scores={Room=62}] 684 121 -7 1
execute if score #temp Searched matches 25 run playsound luigis_mansion:furniture.clock.whistle_up block @a[scores={Room=62}] 684 121 -7 1
scoreboard players reset #temp Searched
execute if score #clockwork_room_clock_1 Searched matches 1.. run scoreboard players remove #clockwork_room_clock_1 Searched 1