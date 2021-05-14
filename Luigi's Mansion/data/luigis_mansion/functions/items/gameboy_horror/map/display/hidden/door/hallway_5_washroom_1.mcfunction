execute store result score #temp Boos run data get storage luigis_mansion:data current_state.current_data.boo_counter
execute unless score #temp Boos matches 5.. run setblock 3669 60 -10 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/single_locked",rotation:"CLOCKWISE_90"}
execute if score #temp Boos matches 5.. run setblock 3669 60 -10 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/single_unlocked",rotation:"CLOCKWISE_90"}
scoreboard players reset #temp Boos
setblock 3669 61 -10 minecraft:redstone_block