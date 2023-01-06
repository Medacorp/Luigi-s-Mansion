The main save data contains a bunch of info. It is loaded at `luigis_mansion:data current_state` and `luigis_mansion:data saved_state`.

```
{
    current_data:{}, //The currently loaded mansion data. Exists in current state only, saving appends it to mansion_data.
    mansion_data:[], //Other mansions' data. For example, the original mansion, while the hidden mansion is loaded. Only data for mansions that got loaded but not cleared are stored here.
    money_grabbed:[ //All money grabbed by players.
        {
            uuid:[I;], //The player's UUID.
            total:X, //The total amount of G excluding the final 3 0s.
            money: { //Individual item types grabbed.
                <namespace>: {
                    <id>:X //How many times this item type has been grabbed by this player.
                }
            }
        }
    ],
    ghosts_caught:[ //All ghosts defeated by players.
        {
            uuid:[I;], //The player's UUID.
            total:X, //The total amount of ghosts defeated.
            caught: { //Individual ghost types defeated.
                <id>:X //How many times this ghost type has been defeated by this player.
            }
        }
    ],
    portrait_ghost_ranks:{ //The highest rank each portrait ghost has been portrificationized as.
        <name>:Xb //A portrait ghost portrait and its rank. -1b is not obtained.
    },
    mansion_ranks_achieved:{ //The mansion ranks a mansion got cleared with.
        <rank>:Xb //A rank and if it has been obtained.
    },
    high_scores:[ //High scores obtained
        {
            data_index:X, //The save data ID of the mansion.
            value:X, //The highest score obtained.
            lowest_value:X, //The lowest score obtained.
            speed:X, //The fastest time this mansion was cleared in.
            health:X  //The best instance of lowest health of any player.
        }
    ]
}
```

The 3DS Remake add-on save data contains some more info. It is loaded at `luigis_mansion_3ds_remake:data current_state` and `luigis_mansion_3ds_remake:data saved_state`.
```
{
    mansion_rank_s_achieved:Xb, //If the S Rank mansion has been obtained.
    portrait_ghosts_defeated_in:{ //What portrait ghosts have been defeated in what mansions.
        <name>:[ //A portrait ghost.
            {
                data_index:-1, //The mansion save data ID.
                mansion_type:-1, //The mansion type ID.
                speed:-1, //The fastest time on the portrait battle clear.
                health:-1 //The best instance of lowest health on the portrait battle clear.
            }
        ]
    },
    selected_portraits:{
        <name>:Xb //A portrait in the gallery its selected frame type. -1b is not obtained.
    },
    boos_caught:{}, //Flags of Boo names that have been captured, to show them in the Boo painting.
    trophy:{ //The trophy progress.
        <category>:{ //A category in the trophy.
            done:Xb, //Whether the category is completed.
            task_X:Xb, //Wether the Xth entry in the list is completed.
            <flags>:{} //Flags belonging to a task, named after the criteria. (For example found_posters:{washroom_2:0b,projection_room:0b} for the find Boo posters task.)
        }
    }
}
```

The Beta Mansion add-on save data contains some more info. It is loaded at `luigis_beta_mansion:data current_state` and `luigis_beta_mansion:data saved_state`.
```
{
    trophy:{ //The trophy progress.
        done:Xb, //Whether the category is completed.
        task_X:Xb //Wether the Xth entry in the list is completed.
    }
}
```

The Extensive Training add-on save data contains some more info. It is loaded at `extensive_training:data current_state` and `extensive_training:data saved_state`.
```
{
    endless_record:X, //The record set in the endless training room program. -1 when no record is set.
    speedrun_record:X, //The record set in the endless training room program. -1 when no record is set.
    trophy:{ //The trophy progress.
        done:Xb, //Whether the category is completed.
        task_X:Xb //Wether the Xth entry in the list is completed.
    }
}
```