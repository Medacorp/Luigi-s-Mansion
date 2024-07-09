teleport @s[scores={Room=3}] 721.0 20 28.0
teleport @s[scores={Room=4}] 689 20 33.0
teleport @s[scores={Room=5}] 682 20 67.0
teleport @s[scores={Room=7}] 726 20 61
teleport @s[scores={Room=8}] 709.0 20 53.0
teleport @s[scores={Room=9}] 691.0 111 47.0
teleport @s[scores={Room=10}] 744 20 63
teleport @s[scores={Room=11}] 716 11 -5
teleport @s[scores={Room=12}] 699 11 -19
teleport @s[scores={Room=13}] 682 11 -9
teleport @s[scores={Room=14}] 674 11 8
teleport @s[scores={Room=16}] 654 11 22
teleport @s[scores={Room=17}] 704.0 11 -53.0
teleport @s[scores={Room=18}] 685 11 -53.0
teleport @s[scores={Room=19}] 664 11 41
teleport @s[scores={Room=20}] 741 11 -29
teleport @s[scores={Room=21}] 741 11 -52.0
teleport @s[scores={Room=22}] 716 11 67
teleport @s[scores={Room=23}] 744 11 63
teleport @s[scores={Room=24}] 743 11 40.0
teleport @s[scores={Room=25}] 658 11 -15
teleport @s[scores={Room=26}] 704 11 43
teleport @s[scores={Room=27}] 704 11 77.0
teleport @s[scores={Room=32}] 643 11 -45.0
teleport @s[scores={Room=34}] 643 20 -45.0
teleport @s[scores={Room=35}] 682 20 -9
teleport @s[scores={Room=36}] 674 20 8
teleport @s[scores={Room=37}] 691 20 -19
teleport @s[scores={Room=38}] 706 20 -19
teleport @s[scores={Room=39..40}] 716 20 -35
teleport @s[scores={Room=42}] 664 20 41
teleport @s[scores={Room=43}] 654 20 22
teleport @s[scores={Room=44}] 658 20 -15
teleport @s[scores={Room=45}] 666 20 -82
teleport @s[scores={Room=47}] 681.0 11 78.0
teleport @s[scores={Room=48}] 681.0 11 38
teleport @s[scores={Room=49}] 743 20 40
teleport @s[scores={Room=50}] 739 29 -45.0
teleport @s[scores={Room=51}] 750 29 -13
teleport @s[scores={Room=52}] 736 29 -13
teleport @s[scores={Room=54}] 735 29 44
teleport @s[scores={Room=55}] 749 29 44
teleport @s[scores={Room=56}] 746 29 18.0
teleport @s[scores={Room=57}] 693 2 -52
teleport @s[scores={Room=58}] 741 2 -52
teleport @s[scores={Room=59}] 722 2 -18
teleport @s[scores={Room=60}] 706 2 -18
teleport @s[scores={Room=62}] 691 120 8.0
teleport @s[scores={Room=64}] 754 29 66.0
teleport @s[scores={Room=65}] 705 29 68.0
teleport @s[scores={Room=67}] 693 2 3
teleport @s[scores={Room=68}] 732 2 3
teleport @s[scores={Room=69}] 741 20 -29
teleport @s[scores={Room=70}] 741 20 -52.0
teleport @s[scores={Room=71}] 696 29 -66.0

data modify storage luigis_mansion:data entity set value {boo:{namespace:"luigis_mansion",id:"null"},name:'{"type":"translatable","translate":"luigis_mansion:entity.boo"}',spawn_time:-601,tags:["cannot_be_removed"]}
data modify storage luigis_mansion:data entity.boo set from entity @s data.boo
execute if entity @s[tag=area_1] run data modify storage luigis_mansion:data entity.tags append value "area_1"
execute if entity @s[tag=area_2] run data modify storage luigis_mansion:data entity.tags append value "area_2"
execute if entity @s[tag=area_3] run data modify storage luigis_mansion:data entity.tags append value "area_3"
execute if entity @s[tag=area_4] run data modify storage luigis_mansion:data entity.tags append value "area_4"
execute at @s run function luigis_mansion:spawn_entities/ghost/hidden_boo

function luigis_mansion:entities/boo/warp_update_data with entity @s data.boo
function luigis_mansion:entities/boo/warp_effects