The main save data contains a bunch of info. It is loaded at `luigis_mansion:data current_state` and `luigis_mansion:data saved_state indexes`.

```
{
    save_index: X, //Which save_state index this data belongs to.
    luigis_mansion:{ //Save data of the base map.
        current_data:{}, //The currently loaded mansion data. Exists in current state only, saving appends it to mansion_data.
        mansion_data:[], //Other mansions' data. For example, the original mansion, while the hidden mansion is loaded. Only data for mansions that got loaded but not cleared are stored here.
        money_grabbed:{ //All money grabbed by players.
            total:X, //The total amount of G excluding the final 3 0s. Decreases when money is dropped.
            money: { //Individual money item types grabbed.
                <namespace>: { //Money items belonging to this namespace.
                    <id>:X //How many times this item type has been grabbed by players. Decreases when dropped.
                }
            }
        },
        rooms:{ //Lab room data.
            <name>:{ //A room.
                seen:0b, //Whether the room has been entered before. Used by the map to mark rooms light gray or hallways lime.
                cleared:0b //Whether the room is cleared. Colors the room on the map.
            }
        },
        ghosts_caught:{ //All ghosts defeated by players.
            total:X, //The total amount of ghosts defeated.
            caught: { //Individual ghost types defeated.
                <namespace>:{ //Ghosts belonging to this namespace.
                    <id>:X //How many times this ghost type has been defeated by players.
                }
            },
            boos:{ //Flags of Boo names that have been captured. Unused in vanilla, used by 3DS Remake to show them in the Boo painting.
                <namespace>:{ //Boos belonging to this namespace.
                    <id>:Xb //A Boo.
                }
            }
        },
        portrait_ghost_ranks:{ //The highest rank each portrait ghost has been portrificationized as.
            <name>:Xb //A portrait ghost portrait and its rank. -1b is not obtained.
        },
        mansion_ranks_achieved:{ //The mansion ranks a mansion got cleared with.
            <rank>:Xb //A rank and if it has been obtained.
        },
        portrait_ghosts_defeated_in:{ //What portrait ghosts have been defeated in what mansions.
            <namespace>:{ //Portrait ghosts belonging to this namespace.
                <id>: [ //A portrait ghost.
                    {
                        mansion:{ //The mansion this portrait ghost has been defeated in
                            namespace:"luigis_mansion", //The mansion namespace.
                            id:"normal" //The mansion ID.
                        },
                        <difficulty>:{ //3DS REMAKE EXCLUSIVE: Portrait battle result of this difficulty in this mansion.
                            speed:X, //The fastest time this portrait battle was cleared in.
                            health:X //The best instance of lowest health of any attempt.
                        }
                    }
                ]
            }
        },
        high_scores:[ //High scores obtained
            {
                data_index:X, //The save data ID of the mansion.
                value:X, //The highest score obtained.
                lowest_value:X, //The lowest score obtained.
                speed:X, //The fastest time this mansion was cleared in.
                health:X, //The best instance of lowest health of any player.
                area:[ //3DS REMAKE EXCLUSIVE: area high scores.
                    { //An area
                        only:X, //Treasure aquired high score for only within this area
                        total:X //Treasure aquired high score for up until this area
                    }
                ]
            }
        ]
    }
}
```

The 3DS Remake add-on save data contains some more info.
```
{
    3ds_remake:{ //Save data belonging to the 3DS Remake add-on.
        data_version:X, //Save data version, used for upgrade paths
        mansion_rank_s_achieved:Xb, //If the S Rank mansion has been obtained.
        selected_portraits:{
            <name>:Xb //A portrait in the gallery and its selected frame type. -1b is not obtained.
        },
        trophy:{ //The trophy progress.
            <category>:{ //A category in the trophy.
                done:Xb, //Whether the category is completed.
                task_X:Xb, //Wether the Xth entry in the list is completed.
                <flags>:{} //Flags belonging to a task, named after the criteria. (For example found_posters:{washroom_2:0b,projection_room:0b} for the find Boo posters task.)
            }
        },
        loaded_mansion:{ //The actually selected mansion that was loaded before initializing a portrait battle.
            data:{}, //The mansion data.
            settings:{}, //The global variables.
            high_scores:{} //The previous high scores of this portrait battle
        },
        obtained_game_boy_horror_part:Xb, //Whether the Game Boy Horror part has been obtained.
        shown_game_boy_horror_part:Xb, //Whether the Game Boy Horror part has been shown to E. Gadd.
        future_e_gadd_call:Xb, //Whether future E. Gadd has called you.
    }
}
```

The E3 Demo add-on save data contains some more info.
```
{
    e3_demo:{ //Save data belonging to the E3 Demo add-on.
        data_version:X, //Save data version, used for upgrade paths
        trophy:{ //The trophy progress.
            done:Xb, //Whether the category is completed.
            task_X:Xb //Wether the Xth entry in the list is completed.
        }
    }
}
```

The Extensive Training add-on save data contains some more info.
```
{
    extensive_training:{ //Save data belonging to the 3DS Remake add-on.
        data_version:X, //Save data version, used for upgrade paths
        endless_record:X, //The record set in the endless training room program. -1 when no record is set.
        speedrun_record:X, //The record set in the speedrun training room program. -1 when no record is set.
        trophy:{ //The trophy progress.
            done:Xb, //Whether the category is completed.
            task_X:Xb //Wether the Xth entry in the list is completed.
        }
    }
}
```