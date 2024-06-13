scoreboard players set #loaded_exterior Selected 1
scoreboard players set * ChangedMansion 1
scoreboard players reset @e ChangedMansion

tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.load_mansion.start"}]}
forceload add 774 9
setblock 771 97 13 minecraft:soul_fire
setblock 771 97 2 minecraft:soul_fire
forceload remove 774 9
forceload add 749 -66 615 81
place template e3_demo:mansion/e3_demo/24 712 138 789
place template e3_demo:mansion/e3_demo/23 712 138 31
place template e3_demo:mansion/e3_demo/22 712 138 -17
place template e3_demo:mansion/e3_demo/21 712 138 -65
place template e3_demo:mansion/e3_demo/20 664 138 79
place template e3_demo:mansion/e3_demo/19 664 138 31
place template e3_demo:mansion/e3_demo/18 664 138 -17
place template e3_demo:mansion/e3_demo/17 664 138 -65
place template e3_demo:mansion/e3_demo/16 616 138 79
place template e3_demo:mansion/e3_demo/15 616 138 31
place template e3_demo:mansion/e3_demo/14 616 138 -17
place template e3_demo:mansion/e3_demo/13 616 138 -65
place template e3_demo:mansion/e3_demo/12 712 90 79
place template e3_demo:mansion/e3_demo/11 712 90 31
place template e3_demo:mansion/e3_demo/10 712 90 -17
place template e3_demo:mansion/e3_demo/9 712 90 -65
place template e3_demo:mansion/e3_demo/8 664 90 79
place template e3_demo:mansion/e3_demo/7 664 90 31
place template e3_demo:mansion/e3_demo/6 664 90 -17
place template e3_demo:mansion/e3_demo/5 664 90 -65
place template e3_demo:mansion/e3_demo/4 616 90 79
place template e3_demo:mansion/e3_demo/3 616 90 31
place template e3_demo:mansion/e3_demo/2 616 90 -17
place template e3_demo:mansion/e3_demo/1 616 90 -65
forceload remove 749 -66 615 81
tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.load_mansion.stop"}]}
execute as @a[x=615,y=92,z=-68,dx=133,dy=60,dz=151,scores={Room=0},gamemode=!spectator] run function luigis_mansion:room/underground_lab/leave