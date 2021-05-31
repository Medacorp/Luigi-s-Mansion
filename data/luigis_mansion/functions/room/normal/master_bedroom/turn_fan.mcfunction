scoreboard players add #master_bedroom_fan HomeRot 1
scoreboard players operation #master_bedroom_fan HomeRot += #master_bedroom_fan Searching
execute if score #master_bedroom_fan HomeRot matches 360.. run scoreboard players remove #master_bedroom_fan HomeRot 360
execute if score #master_bedroom_fan HomeRot matches 0..89 run setblock 687 115 43 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan"}
execute if score #master_bedroom_fan HomeRot matches 0..89 run setblock 687 116 43 minecraft:redstone_block
execute if score #master_bedroom_fan HomeRot matches 90..179 run setblock 694 115 43 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"CLOCKWISE_90"}
execute if score #master_bedroom_fan HomeRot matches 90..179 run setblock 694 116 43 minecraft:redstone_block
execute if score #master_bedroom_fan HomeRot matches 180..269 run setblock 694 115 50 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"CLOCKWISE_180"}
execute if score #master_bedroom_fan HomeRot matches 180..269 run setblock 694 116 50 minecraft:redstone_block
execute if score #master_bedroom_fan HomeRot matches 270..359 run setblock 687 115 50 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"COUNTERCLOCKWISE_90"}
execute if score #master_bedroom_fan HomeRot matches 270..359 run setblock 687 116 50 minecraft:redstone_block