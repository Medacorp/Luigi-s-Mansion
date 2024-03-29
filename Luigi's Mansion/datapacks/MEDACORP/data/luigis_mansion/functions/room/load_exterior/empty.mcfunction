scoreboard players set #loaded_exterior Selected -1
scoreboard players set * ChangedMansion 1
scoreboard players reset @e ChangedMansion

tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.load_mansion.start"}]}
forceload add 774 9
setblock 771 97 13 minecraft:air
setblock 771 97 2 minecraft:air
forceload remove 774 9
forceload add 749 -66 615 81
place template luigis_mansion:mansion/empty/24 712 138 789
place template luigis_mansion:mansion/empty/23 712 138 31
place template luigis_mansion:mansion/empty/22 712 138 -17
place template luigis_mansion:mansion/empty/21 712 138 -65
place template luigis_mansion:mansion/empty/20 664 138 79
place template luigis_mansion:mansion/empty/19 664 138 31
place template luigis_mansion:mansion/empty/18 664 138 -17
place template luigis_mansion:mansion/empty/17 664 138 -65
place template luigis_mansion:mansion/empty/16 616 138 79
place template luigis_mansion:mansion/empty/15 616 138 31
place template luigis_mansion:mansion/empty/14 616 138 -17
place template luigis_mansion:mansion/empty/13 616 138 -65
place template luigis_mansion:mansion/empty/12 712 90 79
place template luigis_mansion:mansion/empty/11 712 90 31
place template luigis_mansion:mansion/empty/10 712 90 -17
place template luigis_mansion:mansion/empty/9 712 90 -65
place template luigis_mansion:mansion/empty/8 664 90 79
place template luigis_mansion:mansion/empty/7 664 90 31
place template luigis_mansion:mansion/empty/6 664 90 -17
place template luigis_mansion:mansion/empty/5 664 90 -65
place template luigis_mansion:mansion/empty/4 616 90 79
place template luigis_mansion:mansion/empty/3 616 90 31
place template luigis_mansion:mansion/empty/2 616 90 -17
place template luigis_mansion:mansion/empty/1 616 90 -65
tag @e[scores={Room=0},tag=door] add remove_from_existence
forceload remove 749 -66 615 81
tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.load_mansion.stop"}]}
execute as @a[x=615,y=92,z=-68,dx=133,dy=60,dz=151,scores={Room=0},gamemode=!spectator] run function luigis_mansion:room/underground_lab/leave