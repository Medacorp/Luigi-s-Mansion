execute unless entity @e[tag=shivers,limit=1] run data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.shivers.scan.1"}'}}
execute unless entity @e[tag=shivers,limit=1] positioned 745 11 -52 rotated -120 0 run function luigis_mansion:spawn_entities/portrait_ghost/shivers
scoreboard players set @e[x=745.5,y=11,z=-51.5,tag=shivers,distance=..0.7,limit=1] PathStep 52
scoreboard players set #butlers_room Wave 1