Score results data is a collection of info storing what is used in the dialog
Each mansion type should create `<namespace>:dialog/play/score_results/get_data/<id>` that sets `portraits.areas`, `money` and `pearls` fields on `dialogs[0]`
```
{
    name:{ //The dialog ID.
        namespace:"luigis_mansion",
        id:"score_results"
    },
    progress:X, //The dialog's progress
    room:-3, //The dialog's room
    ending: {}, //The ending dialog ID. This is taken from current_state.current_data.ending_dialog
    portraits:{ //The portraits to display
        areas:[ //Area pages
            [ //An area
                { //A portrait ghost
                    namespace:"", //The portrait ghost namespace.
                    id:"", //The portrait ghost ID.
                    left:Xd, //The amount of blocks the portrait is offset to the left from the center of the display, relative to the camera
                    up:Xd //The amount of blocks the portrait is offset to the top from the center of the display
                }
            ]
        ],
        new:[ //All portraits that are newly obtained in this batch of portrificationizing, making the portrait drop in and display the name. Order of dropping in is as listed in areas.
            { //A portrait ghost
                namespace:"", //The portrait ghost namespace.
                id:"" //The portrait ghost ID.
            }
        ],
        total:X //Total amount of portraits obtained. Automatically taken from areas, checking the portrificationized field in portrait ghost data.
    },
    money:[ //All money types to count; the total is not affected by this, instead grabbing total from all obtaine money
        { //A money type to count
            namespace:"", //The money namespace.
            id:"" //The money ID.
        }
    ],
    pearls:Xb, //If present lists the 3 pearl types together before the totals; do not list the pearls in money if you don't want double listings.
    areas:X //3DS REMAKE EXCLUSIVE: total amount of areas, automatically taken from portraits.areas list length.
}
```