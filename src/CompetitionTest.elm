import Html exposing (text)
import Json.Decode exposing (string, int, list, at, map, Decoder, decodeString)

import Competition exposing (Competition)
import EventorDecode exposing (competition)


main : Html.Html Competition.Msg
main =
  let
    name = decodedName
  in
    case name of
      Ok value ->
        Competition.view (Just value)
      Err msg ->
       text ("Error: " ++ msg)

decodedName : Result String Competition
decodedName =
  decodeString
      competition
        """
   {
    "$": {
      "eventForm": "IndSingleDay"
    },
    "EventId": [
      "16274"
    ],
    "Name": [
      {
        "_": "Höglands-OL",
        "$": {
          "languageId": "sv"
        }
      }
    ],
    "EventClassification": [
      {
        "EventClassificationId": [
          "4"
        ],
        "Name": [
          {
            "_": "Närtävling",
            "$": {
              "languageId": "sv"
            }
          }
        ],
        "ModifyDate": [
          {
            "Date": [
              "2005-12-15"
            ],
            "Clock": [
              "11:39:48"
            ]
          }
        ]
      }
    ],
    "EventStatusId": [
      "5"
    ],
    "EventAttributeId": [
      "9"
    ],
    "DisciplineId": [
      "1"
    ],
    "StartDate": [
      {
        "Date": [
          "2016-07-12"
        ],
        "Clock": [
          "17:30:00"
        ]
      }
    ],
    "FinishDate": [
      {
        "Date": [
          "2016-07-12"
        ],
        "Clock": [
          "20:30:00"
        ]
      }
    ],
    "EventOfficial": [
      {
        "EventOfficialId": [
          "49908"
        ],
        "RoleTypeId": [
          "103"
        ],
        "PersonId": [
          {
            "_": "2901",
            "$": {
              "type": "nat",
              "idManager": "Eventor"
            }
          }
        ],
        "EventId": [
          "16274"
        ],
        "ModifyDate": [
          {
            "Date": [
              "2016-06-20"
            ],
            "Clock": [
              "10:02:54"
            ]
          }
        ]
      }
    ],
    "Organiser": [
      {
        "OrganisationId": [
          "144"
        ]
      }
    ],
    "ClassTypeId": [
      "19"
    ],
    "EntryBreak": [
      {
        "ValidToDate": [
          {
            "Date": [
              "2016-06-19"
            ],
            "Clock": [
              "23:59:59"
            ]
          }
        ]
      }
    ],
    "EventRace": [
      {
        "$": {
          "raceLightCondition": "Day",
          "raceDistance": "Long"
        },
        "EventRaceId": [
          "17146"
        ],
        "EventId": [
          "16274"
        ],
        "Name": [
          ""
        ],
        "RaceDate": [
          {
            "Date": [
              "2016-07-12"
            ],
            "Clock": [
              "17:30:00"
            ]
          }
        ],
        "EventCenterPosition": [
          {
            "$": {
              "y": "57.72358",
              "x": "14.48801"
            }
          }
        ],
        "ModifyDate": [
          {
            "Date": [
              "2016-06-20"
            ],
            "Clock": [
              "10:02:54"
            ]
          }
        ],
        "ModifiedBy": [
          {
            "PersonId": [
              {
                "_": "2901",
                "$": {
                  "type": "nat",
                  "idManager": "Eventor"
                }
              }
            ]
          }
        ]
      }
    ],
    "WebURL": [
      "http://fsok.3w.se"
    ],
    "ContactData": [
      {
        "Tele": [
          {
            "$": {
              "phoneNumber": "070-620 68 66",
              "mailAddress": "forserumssok@telia.com"
            },
            "TeleType": [
              {
                "$": {
                  "value": "official"
                }
              }
            ],
            "ModifyDate": [
              {
                "Date": [
                  "2016-06-20"
                ],
                "Clock": [
                  "10:02:54"
                ]
              }
            ]
          }
        ]
      }
    ],
    "Comment": [
      ""
    ],
    "PunchingUnitType": [
      {
        "$": {
          "value": "SI"
        }
      }
    ],
    "ModifyDate": [
      {
        "Date": [
          "2016-06-20"
        ],
        "Clock": [
          "10:02:54"
        ]
      }
    ],
    "ModifiedBy": [
      {
        "PersonId": [
          {
            "_": "2901",
            "$": {
              "type": "nat",
              "idManager": "Eventor"
            }
          }
        ]
      }
    ],
    "HashTableEntry": [
      {
        "$": {
          "id": "16274",
          "entity": "Events"
        },
        "Key": [
          "Eventor_ConsultationPerformed"
        ],
        "Value": [
          "1"
        ],
        "ModifyDate": [
          {
            "Date": [
              "2016-06-20"
            ],
            "Clock": [
              "09:56:49"
            ]
          }
        ]
      }
    ]
  }

        """