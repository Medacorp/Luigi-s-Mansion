scoreboard players add #master_bedroom_fan HomeRot 1
scoreboard players operation #master_bedroom_fan HomeRot += #master_bedroom_fan Searching
execute if score #master_bedroom_fan HomeRot matches 360.. run scoreboard players remove #master_bedroom_fan HomeRot 360
execute if score #master_bedroom_fan HomeRot matches 0..89 run setblock 687 115 -28 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",mirror:"LEFT_RIGHT"}
execute if score #master_bedroom_fan HomeRot matches 0..89 run setblock 687 116 -28 minecraft:redstone_block
execute if score #master_bedroom_fan HomeRot matches 90..179 run setblock 694 115 -28 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"COUNTERCLOCKWISE_90",mirror:"LEFT_RIGHT"}
execute if score #master_bedroom_fan HomeRot matches 90..179 run setblock 694 116 -28 minecraft:redstone_block
execute if score #master_bedroom_fan HomeRot matches 180..269 run setblock 694 115 -35 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"CLOCKWISE_180",mirror:"LEFT_RIGHT"}
execute if score #master_bedroom_fan HomeRot matches 180..269 run setblock 694 116 -35 minecraft:redstone_block
execute if score #master_bedroom_fan HomeRot matches 270..359 run setblock 687 115 -35 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"CLOCKWISE_90",mirror:"LEFT_RIGHT"}
execute if score #master_bedroom_fan HomeRot matches 270..359 run setblock 687 116 -35 minecraft:redstone_block