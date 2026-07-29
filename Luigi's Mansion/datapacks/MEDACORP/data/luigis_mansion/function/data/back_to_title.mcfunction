function luigis_mansion:room/reset
data remove storage luigis_mansion:data current_state
data modify storage luigis_mansion:data dialogs set value [{name:{namespace:"luigis_mansion",id:"dummy"},progress:-1},{name:{namespace:"luigis_mansion",id:"title_screen"}}]
execute if data storage luigis_mansion:data memory[0] run data modify storage luigis_mansion:data memory[].poltergust_element set value "none"
scoreboard players set @e[tag=player] Room 0
execute as @a run function luigis_mansion:entities/luigi/move/teleport {teleport:"781 110 8.0 90 0"}