module Competitions.Mock exposing (competitions, startList, stringToStartList)

import Json.Decode exposing (string, int, list, at, map, Decoder, decodeString)
import Competitions.Models exposing (..)
import Eventor.Decode exposing (competition, startList)


competitions : List Competition
competitions =
    let
        decodedCompetitions =
            competitionsFromJson
    in
        case decodedCompetitions of
            Ok value ->
                value

            Err msg ->
                (Debug.log msg [])


startList : CompetitionId -> StartList
startList competitionId =
    let
        decodedStartList =
            startListFromJson startListJson
    in
        case decodedStartList of
            Ok value ->
                value

            Err msg ->
                (Debug.log msg emptyStartList)


stringToStartList : String -> StartList
stringToStartList json =
    let
        decodedStartList =
            startListFromJson json
    in
        case decodedStartList of
            Ok value ->
                value

            Err msg ->
                (Debug.log msg emptyStartList)


startListFromJson : String -> Result String StartList
startListFromJson json =
    decodeString
        Eventor.Decode.startList
        json


startListJson : String
startListJson =
    """
            {
  "StartList": {
      "Event": [
      {
        "$": {
          "eventForm": "IndSingleDay"
        },
        "EventId": [
          "11646"
        ],
        "Name": [
          {
            "_": "Ungdomsserien deltävling 3",
            "$": {
              "languageId": "sv"
            }
          }
        ],
        "EventClassificationId": [
          "4"
        ],
        "EventStatusId": [
          "9"
        ],
        "StartDate": [
          {
            "Date": [
              "2015-08-20"
            ],
            "Clock": [
              "18:00:00"
            ]
          }
        ],
        "FinishDate": [
          {
            "Date": [
              "2015-08-20"
            ],
            "Clock": [
              "18:00:00"
            ]
          }
        ],
        "Organiser": [
          {
            "OrganisationId": [
              "242"
            ]
          }
        ],
        "WebURL": [
          "http://www.lok.se/"
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
              "2015-08-21"
            ],
            "Clock": [
              "07:37:54"
            ]
          }
        ],
        "ModifiedBy": [
          {
            "PersonId": [
              {
                "_": "26406",
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
    "ClassStart": [
      {
        "$": {
          "numberOfEntries": "8"
        },
        "EventClass": [
          {
            "$": {
              "totalResult": "Y",
              "timePresentation": "Y",
              "teamEntry": "N",
              "sex": "B",
              "sequence": "730",
              "numberOfVacancies": "0",
              "numberOfPrizes": "0",
              "numberOfLegs": "1",
              "numberInTeam": "1",
              "normalizedClass": "Y",
              "maxNumberInClass": "0",
              "highAge": "16",
              "divideClassMethod": "divideByClub",
              "allowEntryInAdvance": "Y",
              "actualForRanking": "N"
            },
            "EventClassId": [
              "193449"
            ],
            "Name": [
              {
                "_": "U2",
                "$": {
                  "languageId": "sv"
                }
              }
            ],
            "ClassShortName": [
              "U2"
            ],
            "EventClassStatus": [
              {
                "$": {
                  "value": "normal"
                }
              }
            ],
            "EventId": [
              "11646"
            ],
            "ClassTypeId": [
              "18"
            ],
            "BaseClassId": [
              "60"
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
                  "2015-06-29"
                ],
                "Clock": [
                  "11:14:06"
                ]
              }
            ],
            "ClassRaceInfo": [
              {
                "$": {
                  "timeResolution": "seconds",
                  "restartedTeamsAfter": "Y",
                  "relayLeg": "1",
                  "rankingRace": "Y",
                  "priceGivingDone": "N",
                  "numberOfPrizes": "0",
                  "minRunners": "1",
                  "maxRunners": "1",
                  "finishChute": "",
                  "bibNumberPrefix": "",
                  "bibNumberInherit": "Y",
                  "bibNumberBase": ""
                },
                "ClassRaceInfoId": [
                  "223954"
                ],
                "EventRaceId": [
                  "12323"
                ],
                "EventClassId": [
                  "193449"
                ],
                "Name": [
                  ""
                ],
                "CourseLength": [
                  "0"
                ],
                "FirstStart": [
                  {
                    "Date": [
                      "2015-08-20"
                    ],
                    "Clock": [
                      "18:00:00"
                    ]
                  }
                ],
                "StartInterval": [
                  {
                    "Time": [
                      "00:00"
                    ]
                  }
                ],
                "EstimatedBestTime": [
                  {
                    "Time": [
                      "0:00"
                    ]
                  }
                ],
                "EstimatedLastPrizeTime": [
                  {
                    "Time": [
                      "0:00"
                    ]
                  }
                ],
                "AllocationMethod": [
                  {
                    "$": {
                      "value": "sNormalDraw"
                    }
                  }
                ],
                "StartMethod": [
                  {
                    "$": {
                      "value": "allocatedStart",
                      "lateStartLimit": "0",
                      "earlyStartLimit": "0"
                    }
                  }
                ],
                "ClassRaceStatus": [
                  {
                    "$": {
                      "value": "notAllocated"
                    }
                  }
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
                      "2015-06-29"
                    ],
                    "Clock": [
                      "11:14:06"
                    ]
                  }
                ]
              }
            ]
          }
        ],
        "PersonStart": [
          {
            "Person": [
              {
                "$": {
                  "sex": "F"
                },
                "PersonName": [
                  {
                    "Family": [
                      "Ström"
                    ],
                    "Given": [
                      {
                        "_": "Livia",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "120968",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2004-08-24"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "367"
                ],
                "Name": [
                  {
                    "_": "Stjärnorps SK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Stjärnorps SK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "CountryId": [
                  {
                    "$": {
                      "value": ""
                    }
                  }
                ]
              }
            ],
            "Start": [
              {
                "BibNumber": [
                  "610"
                ],
                "CCardId": [
                  "256839"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2015-08-20"
                    ],
                    "Clock": [
                      "18:26:00"
                    ]
                  }
                ],
                "StartId": [
                  "f8a57ca2-326e-4b97-a16a-63cb565268e9"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2015-08-21"
                    ],
                    "Clock": [
                      "07:37:52"
                    ]
                  }
                ]
              }
            ]
          },
          {
            "Person": [
              {
                "PersonName": [
                  {
                    "Family": [
                      "Andersson"
                    ],
                    "Given": [
                      {
                        "_": "Alba",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "242"
                ],
                "Name": [
                  {
                    "_": "Linköpings OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Linköpings OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "CountryId": [
                  {
                    "$": {
                      "value": ""
                    }
                  }
                ]
              }
            ],
            "Start": [
              {
                "BibNumber": [
                  "609"
                ],
                "CCardId": [
                  "424910"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2015-08-20"
                    ],
                    "Clock": [
                      "18:23:00"
                    ]
                  }
                ],
                "StartId": [
                  "ae6554fd-506b-4f4d-816e-81e096af9c82"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2015-08-21"
                    ],
                    "Clock": [
                      "07:37:52"
                    ]
                  }
                ]
              }
            ]
          },
          {
            "Person": [
              {
                "$": {
                  "sex": "M"
                },
                "PersonName": [
                  {
                    "Family": [
                      "Thomassen"
                    ],
                    "Given": [
                      {
                        "_": "Vilhelm",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "121060",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2007-05-25"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "242"
                ],
                "Name": [
                  {
                    "_": "Linköpings OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Linköpings OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "CountryId": [
                  {
                    "$": {
                      "value": ""
                    }
                  }
                ]
              }
            ],
            "Start": [
              {
                "BibNumber": [
                  "608"
                ],
                "CCardId": [
                  "445212"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2015-08-20"
                    ],
                    "Clock": [
                      "18:20:00"
                    ]
                  }
                ],
                "StartId": [
                  "b189cb0e-ed84-499d-bfc0-719993266d40"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2015-08-21"
                    ],
                    "Clock": [
                      "07:37:52"
                    ]
                  }
                ]
              }
            ]
          },
          {
            "Person": [
              {
                "$": {
                  "sex": "F"
                },
                "PersonName": [
                  {
                    "Family": [
                      "Ström"
                    ],
                    "Given": [
                      {
                        "_": "Amilia",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "120966",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2005-12-31"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "367"
                ],
                "Name": [
                  {
                    "_": "Stjärnorps SK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Stjärnorps SK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "CountryId": [
                  {
                    "$": {
                      "value": ""
                    }
                  }
                ]
              }
            ],
            "Start": [
              {
                "BibNumber": [
                  "607"
                ],
                "CCardId": [
                  "256861"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2015-08-20"
                    ],
                    "Clock": [
                      "18:17:00"
                    ]
                  }
                ],
                "StartId": [
                  "88834681-e49e-4aa6-88b7-96efd79c314d"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2015-08-21"
                    ],
                    "Clock": [
                      "07:37:52"
                    ]
                  }
                ]
              }
            ]
          },
          {
            "Person": [
              {
                "$": {
                  "sex": "M"
                },
                "PersonName": [
                  {
                    "Family": [
                      "Thorée"
                    ],
                    "Given": [
                      {
                        "_": "Oliver",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "131624",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2007-05-29"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "242"
                ],
                "Name": [
                  {
                    "_": "Linköpings OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Linköpings OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "CountryId": [
                  {
                    "$": {
                      "value": ""
                    }
                  }
                ]
              }
            ],
            "Start": [
              {
                "BibNumber": [
                  "605"
                ],
                "CCardId": [
                  "445213"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2015-08-20"
                    ],
                    "Clock": [
                      "18:11:00"
                    ]
                  }
                ],
                "StartId": [
                  "d1fa440c-cb46-4d21-a89e-527f1a7acc66"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2015-08-21"
                    ],
                    "Clock": [
                      "07:37:52"
                    ]
                  }
                ]
              }
            ]
          },
          {
            "Person": [
              {
                "$": {
                  "sex": "F"
                },
                "PersonName": [
                  {
                    "Family": [
                      "Dalbark"
                    ],
                    "Given": [
                      {
                        "_": "Sanna",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "115182",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2006-06-04"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "242"
                ],
                "Name": [
                  {
                    "_": "Linköpings OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Linköpings OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "CountryId": [
                  {
                    "$": {
                      "value": ""
                    }
                  }
                ]
              }
            ],
            "Start": [
              {
                "BibNumber": [
                  "602"
                ],
                "CCardId": [
                  "343553"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2015-08-20"
                    ],
                    "Clock": [
                      "18:02:00"
                    ]
                  }
                ],
                "StartId": [
                  "2c53807a-da0b-47c6-aebd-c258c0d2c404"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2015-08-21"
                    ],
                    "Clock": [
                      "07:37:52"
                    ]
                  }
                ]
              }
            ]
          },
          {
            "Person": [
              {
                "$": {
                  "sex": "F"
                },
                "PersonName": [
                  {
                    "Family": [
                      "Nyander"
                    ],
                    "Given": [
                      {
                        "_": "Elsa",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "115718",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2007-07-24"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "610"
                ],
                "Name": [
                  {
                    "_": "OK Roxen",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "OK Roxen",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "CountryId": [
                  {
                    "$": {
                      "value": ""
                    }
                  }
                ]
              }
            ],
            "Start": [
              {
                "BibNumber": [
                  "604"
                ],
                "CCardId": [
                  "28082"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2015-08-20"
                    ],
                    "Clock": [
                      "18:08:00"
                    ]
                  }
                ],
                "StartId": [
                  "e6d91f94-84a7-49a5-b369-e33b9f414891"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2015-08-21"
                    ],
                    "Clock": [
                      "07:37:52"
                    ]
                  }
                ]
              }
            ]
          },
          {
            "Person": [
              {
                "$": {
                  "sex": "F"
                },
                "PersonName": [
                  {
                    "Family": [
                      "Kjellman"
                    ],
                    "Given": [
                      {
                        "_": "Ida",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "83653",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2010-05-23"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "242"
                ],
                "Name": [
                  {
                    "_": "Linköpings OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Linköpings OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "CountryId": [
                  {
                    "$": {
                      "value": ""
                    }
                  }
                ]
              }
            ],
            "Start": [
              {
                "BibNumber": [
                  "606"
                ],
                "CCardId": [
                  "9671029"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2015-08-20"
                    ],
                    "Clock": [
                      "18:14:00"
                    ]
                  }
                ],
                "StartId": [
                  "59cbfed0-d7f8-45b2-bc97-6795e16b2064"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2015-08-21"
                    ],
                    "Clock": [
                      "07:37:52"
                    ]
                  }
                ]
              }
            ]
          }
        ]
      }
    ]
  }
}
"""


competitionsFromJson : Result String (List Competition)
competitionsFromJson =
    decodeString
        (at [ "EventList", "Event" ] (list competition))
        """
   {
    "EventList": {
        "Event": [
            {
                "$": {
                    "eventForm": "IndSingleDay"
                },
                "EventId": [
                    "11758"
                ],
                "Name": [
                    {
                        "_": "PreO, 'Helsingehelg' i Idre",
                        "$": {
                            "languageId": "sv"
                        }
                    }
                ],
                "EventClassificationId": [
                    "2"
                ],
                "EventStatusId": [
                    "5"
                ],
                "DisciplineId": [
                    "4"
                ],
                "StartDate": [
                    {
                        "Date": [
                            "2016-07-21"
                        ],
                        "Clock": [
                            "00:00:00"
                        ]
                    }
                ],
                "FinishDate": [
                    {
                        "Date": [
                            "2016-07-21"
                        ],
                        "Clock": [
                            "00:00:00"
                        ]
                    }
                ],
                "AlternativeDates": [
                    {
                        "Sequence": [
                            "1"
                        ],
                        "StartDate": [
                            {
                                "Date": [
                                    "2016-07-21"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "FinishDate": [
                            {
                                "Date": [
                                    "2016-07-21"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-06-23"
                                ],
                                "Clock": [
                                    "21:08:10"
                                ]
                            }
                        ]
                    }
                ],
                "Organiser": [
                    {
                        "OrganisationId": [
                            "306"
                        ]
                    }
                ],
                "ClassTypeId": [
                    "16",
                    "17"
                ],
                "EventRace": [
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Long"
                        },
                        "EventRaceId": [
                            "12440"
                        ],
                        "EventId": [
                            "11758"
                        ],
                        "Name": [
                            ""
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-21"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "61.9323",
                                    "x": "12.65706"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-06-23"
                                ],
                                "Clock": [
                                    "21:08:10"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "4778",
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
                    "http://www.rehnsbk.nu"
                ],
                "Comment": [
                    ""
                ],
                "PunchingUnitType": [
                    {
                        "$": {
                            "value": "manual"
                        }
                    }
                ],
                "ModifyDate": [
                    {
                        "Date": [
                            "2016-06-23"
                        ],
                        "Clock": [
                            "21:08:10"
                        ]
                    }
                ],
                "ModifiedBy": [
                    {
                        "PersonId": [
                            {
                                "_": "4778",
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
                            "id": "11758",
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
                                    "2016-04-02"
                                ],
                                "Clock": [
                                    "15:38:30"
                                ]
                            }
                        ]
                    }
                ]
            },
            {
                "$": {
                    "eventForm": "IndSingleDay"
                },
                "EventId": [
                    "11759"
                ],
                "Name": [
                    {
                        "_": "PreO, 'Helsingehelg' i Idre, DM Dalarna",
                        "$": {
                            "languageId": "sv"
                        }
                    }
                ],
                "EventClassificationId": [
                    "1"
                ],
                "EventStatusId": [
                    "5"
                ],
                "DisciplineId": [
                    "4"
                ],
                "StartDate": [
                    {
                        "Date": [
                            "2016-07-22"
                        ],
                        "Clock": [
                            "00:00:00"
                        ]
                    }
                ],
                "FinishDate": [
                    {
                        "Date": [
                            "2016-07-22"
                        ],
                        "Clock": [
                            "00:00:00"
                        ]
                    }
                ],
                "AlternativeDates": [
                    {
                        "Sequence": [
                            "1"
                        ],
                        "StartDate": [
                            {
                                "Date": [
                                    "2016-07-22"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "FinishDate": [
                            {
                                "Date": [
                                    "2016-07-22"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-06-23"
                                ],
                                "Clock": [
                                    "21:08:56"
                                ]
                            }
                        ]
                    }
                ],
                "Organiser": [
                    {
                        "OrganisationId": [
                            "306"
                        ]
                    }
                ],
                "ClassTypeId": [
                    "17",
                    "16"
                ],
                "EventRace": [
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Long"
                        },
                        "EventRaceId": [
                            "12441"
                        ],
                        "EventId": [
                            "11759"
                        ],
                        "Name": [
                            ""
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-22"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "61.93229",
                                    "x": "12.65628"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-06-23"
                                ],
                                "Clock": [
                                    "21:08:56"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "4778",
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
                    "http://www.rehnsbnk.nu"
                ],
                "Comment": [
                    ""
                ],
                "PunchingUnitType": [
                    {
                        "$": {
                            "value": "manual"
                        }
                    }
                ],
                "ModifyDate": [
                    {
                        "Date": [
                            "2016-06-23"
                        ],
                        "Clock": [
                            "21:08:56"
                        ]
                    }
                ],
                "ModifiedBy": [
                    {
                        "PersonId": [
                            {
                                "_": "4778",
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
                            "id": "11759",
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
                                    "2016-03-10"
                                ],
                                "Clock": [
                                    "17:18:13"
                                ]
                            }
                        ]
                    }
                ]
            },
            {
                "$": {
                    "eventForm": "IndMultiDay"
                },
                "EventId": [
                    "12151"
                ],
                "Name": [
                    {
                        "_": "Morokulien 2-dagars",
                        "$": {
                            "languageId": "sv"
                        }
                    }
                ],
                "EventClassificationId": [
                    "2"
                ],
                "EventStatusId": [
                    "5"
                ],
                "DisciplineId": [
                    "1"
                ],
                "StartDate": [
                    {
                        "Date": [
                            "2016-07-21"
                        ],
                        "Clock": [
                            "00:00:00"
                        ]
                    }
                ],
                "FinishDate": [
                    {
                        "Date": [
                            "2016-07-22"
                        ],
                        "Clock": [
                            "00:00:00"
                        ]
                    }
                ],
                "AlternativeDates": [
                    {
                        "Sequence": [
                            "1"
                        ],
                        "StartDate": [
                            {
                                "Date": [
                                    "2016-07-21"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "FinishDate": [
                            {
                                "Date": [
                                    "2016-07-22"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-07-02"
                                ],
                                "Clock": [
                                    "17:45:02"
                                ]
                            }
                        ]
                    }
                ],
                "Organiser": [
                    {
                        "OrganisationId": [
                            "148",
                            "524"
                        ]
                    }
                ],
                "ClassTypeId": [
                    "18",
                    "17",
                    "19"
                ],
                "EventRace": [
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Middle"
                        },
                        "EventRaceId": [
                            "12851"
                        ],
                        "EventId": [
                            "12151"
                        ],
                        "Name": [
                            {
                                "_": "Etapp 1, medel",
                                "$": {
                                    "languageId": "sv"
                                }
                            }
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-21"
                                ],
                                "Clock": [
                                    "16:00:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "59.93073",
                                    "x": "12.24036"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-07-02"
                                ],
                                "Clock": [
                                    "17:45:02"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "3803",
                                        "$": {
                                            "type": "nat",
                                            "idManager": "Eventor"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Middle"
                        },
                        "EventRaceId": [
                            "12852"
                        ],
                        "EventId": [
                            "12151"
                        ],
                        "Name": [
                            {
                                "_": "Etapp 2, medel",
                                "$": {
                                    "languageId": "sv"
                                }
                            }
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-22"
                                ],
                                "Clock": [
                                    "09:00:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "59.70742",
                                    "x": "12.16022"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-07-02"
                                ],
                                "Clock": [
                                    "17:45:02"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "20278",
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
                    "http://www.morokulien.nu"
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
                            "2016-07-02"
                        ],
                        "Clock": [
                            "17:45:02"
                        ]
                    }
                ],
                "ModifiedBy": [
                    {
                        "PersonId": [
                            {
                                "_": "20278",
                                "$": {
                                    "type": "nat",
                                    "idManager": "Eventor"
                                }
                            }
                        ]
                    }
                ]
            },
            {
                "$": {
                    "eventForm": "IndMultiDay"
                },
                "EventId": [
                    "13229"
                ],
                "Name": [
                    {
                        "_": "O-Ringen Sälen 2016",
                        "$": {
                            "languageId": "sv"
                        }
                    }
                ],
                "EventClassificationId": [
                    "2"
                ],
                "EventStatusId": [
                    "5"
                ],
                "DisciplineId": [
                    "1"
                ],
                "StartDate": [
                    {
                        "Date": [
                            "2016-07-24"
                        ],
                        "Clock": [
                            "00:00:00"
                        ]
                    }
                ],
                "FinishDate": [
                    {
                        "Date": [
                            "2016-07-29"
                        ],
                        "Clock": [
                            "00:00:00"
                        ]
                    }
                ],
                "AlternativeDates": [
                    {
                        "Sequence": [
                            "1"
                        ],
                        "StartDate": [
                            {
                                "Date": [
                                    "2016-07-24"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "FinishDate": [
                            {
                                "Date": [
                                    "2016-07-29"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-07-06"
                                ],
                                "Clock": [
                                    "16:43:38"
                                ]
                            }
                        ]
                    }
                ],
                "Organiser": [
                    {
                        "OrganisationId": [
                            "611"
                        ]
                    }
                ],
                "ClassTypeId": [
                    "17",
                    "18",
                    "19",
                    "16"
                ],
                "EventRace": [
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Long"
                        },
                        "EventRaceId": [
                            "13981"
                        ],
                        "EventId": [
                            "13229"
                        ],
                        "Name": [
                            {
                                "_": "Etapp 1",
                                "$": {
                                    "languageId": "sv"
                                }
                            }
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-24"
                                ],
                                "Clock": [
                                    "08:30:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "61.1556",
                                    "x": "13.11496"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-07-06"
                                ],
                                "Clock": [
                                    "16:43:38"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "1884",
                                        "$": {
                                            "type": "nat",
                                            "idManager": "Eventor"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Long"
                        },
                        "EventRaceId": [
                            "13982"
                        ],
                        "EventId": [
                            "13229"
                        ],
                        "Name": [
                            {
                                "_": "Etapp 2",
                                "$": {
                                    "languageId": "sv"
                                }
                            }
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-25"
                                ],
                                "Clock": [
                                    "08:30:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "61.15506",
                                    "x": "13.1159"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-07-06"
                                ],
                                "Clock": [
                                    "16:43:38"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "1884",
                                        "$": {
                                            "type": "nat",
                                            "idManager": "Eventor"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Middle"
                        },
                        "EventRaceId": [
                            "13983"
                        ],
                        "EventId": [
                            "13229"
                        ],
                        "Name": [
                            {
                                "_": "Etapp 3",
                                "$": {
                                    "languageId": "sv"
                                }
                            }
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-26"
                                ],
                                "Clock": [
                                    "08:30:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "61.15472",
                                    "x": "13.11618"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-07-06"
                                ],
                                "Clock": [
                                    "16:43:38"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "1884",
                                        "$": {
                                            "type": "nat",
                                            "idManager": "Eventor"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Long"
                        },
                        "EventRaceId": [
                            "13984"
                        ],
                        "EventId": [
                            "13229"
                        ],
                        "Name": [
                            {
                                "_": "Etapp 4",
                                "$": {
                                    "languageId": "sv"
                                }
                            }
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-28"
                                ],
                                "Clock": [
                                    "08:30:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "61.15584",
                                    "x": "13.20347"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-07-06"
                                ],
                                "Clock": [
                                    "16:43:38"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "1884",
                                        "$": {
                                            "type": "nat",
                                            "idManager": "Eventor"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Long"
                        },
                        "EventRaceId": [
                            "13985"
                        ],
                        "EventId": [
                            "13229"
                        ],
                        "Name": [
                            {
                                "_": "Etapp 5",
                                "$": {
                                    "languageId": "sv"
                                }
                            }
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-29"
                                ],
                                "Clock": [
                                    "08:30:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "61.1558",
                                    "x": "13.20368"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-07-06"
                                ],
                                "Clock": [
                                    "16:43:38"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "1884",
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
                    "http://www.oringen.se"
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
                            "2016-07-06"
                        ],
                        "Clock": [
                            "16:43:40"
                        ]
                    }
                ],
                "ModifiedBy": [
                    {
                        "PersonId": [
                            {
                                "_": "63649",
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
                            "id": "13229",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_EntryTermsAndConditions"
                        ],
                        "Value": [
                            "en;I accept the agreement regarding entries at http://oringen.se/terms|sv;Jag godkänner villkoren för anmälan enligt http://oringen.se/villkor"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2015-07-17"
                                ],
                                "Clock": [
                                    "05:22:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13229",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_Address"
                        ],
                        "Value": [
                            "O-Ringen AB;Lägerhyddsvägen 2 hus 38;752 37 Uppsala;Sverige|0771-49 90 00|info@oringen.se"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13229",
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
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "09:10:40"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13229",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_KeepOrdersAfterPaymentDeadline"
                        ],
                        "Value": [
                            "1"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13229",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_EventClassChangeKeepsEntryDate"
                        ],
                        "Value": [
                            "1"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13229",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_RefundAddress"
                        ],
                        "Value": [
                            "O-Ringen AB;Lägerhyddsvägen 2 hus 38;752 37 Uppsala;Sverige|0771-49 90 00|info@oringen.se"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13229",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_ForeignPaymentFee"
                        ],
                        "Value": [
                            "30"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2015-07-17"
                                ],
                                "Clock": [
                                    "05:22:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13229",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_PaymentEventId"
                        ],
                        "Value": [
                            "8"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2015-07-17"
                                ],
                                "Clock": [
                                    "05:22:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13229",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_EntryChangeDeadlines"
                        ],
                        "Value": [
                            "2016-06-01 21:59:59;ServiceRequests|2016-06-01 21:59:59;EventClass,EventRaces,NumberOfCompetitors,Person,Organisation|2016-07-16 21:59:59;PunchingCard"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13229",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_AutoAssignRentalPunchingCard"
                        ],
                        "Value": [
                            "1"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13229",
                            "entity": "Events"
                        },
                        "Key": [
                            "entryPaymentRespiteDays"
                        ],
                        "Value": [
                            "30"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2015-07-17"
                                ],
                                "Clock": [
                                    "05:22:00"
                                ]
                            }
                        ]
                    }
                ]
            },
            {
                "$": {
                    "eventForm": "IndMultiDay"
                },
                "EventId": [
                    "13230"
                ],
                "Name": [
                    {
                        "_": "MtbO, O-Ringen Sälen 2016",
                        "$": {
                            "languageId": "sv"
                        }
                    }
                ],
                "EventClassificationId": [
                    "2"
                ],
                "EventStatusId": [
                    "5"
                ],
                "DisciplineId": [
                    "2"
                ],
                "StartDate": [
                    {
                        "Date": [
                            "2016-07-25"
                        ],
                        "Clock": [
                            "00:00:00"
                        ]
                    }
                ],
                "FinishDate": [
                    {
                        "Date": [
                            "2016-07-27"
                        ],
                        "Clock": [
                            "00:00:00"
                        ]
                    }
                ],
                "AlternativeDates": [
                    {
                        "Sequence": [
                            "1"
                        ],
                        "StartDate": [
                            {
                                "Date": [
                                    "2016-07-25"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "FinishDate": [
                            {
                                "Date": [
                                    "2016-07-27"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-06-21"
                                ],
                                "Clock": [
                                    "11:35:12"
                                ]
                            }
                        ]
                    }
                ],
                "Organiser": [
                    {
                        "OrganisationId": [
                            "611"
                        ]
                    }
                ],
                "ClassTypeId": [
                    "19",
                    "17"
                ],
                "EventRace": [
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Sprint"
                        },
                        "EventRaceId": [
                            "13986"
                        ],
                        "EventId": [
                            "13230"
                        ],
                        "Name": [
                            {
                                "_": "Etapp 1",
                                "$": {
                                    "languageId": "sv"
                                }
                            }
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-25"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "61.12889",
                                    "x": "12.8142"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-06-21"
                                ],
                                "Clock": [
                                    "11:35:12"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "24679",
                                        "$": {
                                            "type": "nat",
                                            "idManager": "Eventor"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Middle"
                        },
                        "EventRaceId": [
                            "13987"
                        ],
                        "EventId": [
                            "13230"
                        ],
                        "Name": [
                            {
                                "_": "Etapp 2",
                                "$": {
                                    "languageId": "sv"
                                }
                            }
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-26"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "61.12884",
                                    "x": "12.81438"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-06-21"
                                ],
                                "Clock": [
                                    "11:35:12"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "24679",
                                        "$": {
                                            "type": "nat",
                                            "idManager": "Eventor"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Long"
                        },
                        "EventRaceId": [
                            "13988"
                        ],
                        "EventId": [
                            "13230"
                        ],
                        "Name": [
                            {
                                "_": "Etapp 3",
                                "$": {
                                    "languageId": "sv"
                                }
                            }
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-27"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "61.12917",
                                    "x": "12.8142"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-06-21"
                                ],
                                "Clock": [
                                    "11:35:12"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "24679",
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
                    "http://www.oringen.se"
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
                            "2016-06-21"
                        ],
                        "Clock": [
                            "11:35:12"
                        ]
                    }
                ],
                "ModifiedBy": [
                    {
                        "PersonId": [
                            {
                                "_": "21036",
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
                            "id": "13230",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_KeepOrdersAfterPaymentDeadline"
                        ],
                        "Value": [
                            "1"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13230",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_EntryTermsAndConditions"
                        ],
                        "Value": [
                            "en;I accept the agreement regarding entries at http://oringen.se/terms|sv;Jag godkänner villkoren för anmälan enligt http://oringen.se/villkor"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2015-07-17"
                                ],
                                "Clock": [
                                    "05:22:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13230",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_EntryChangeDeadlines"
                        ],
                        "Value": [
                            "2016-06-01 21:59:59;ServiceRequests|2016-06-01 21:59:59;EventClass,EventRaces,NumberOfCompetitors,Person,Organisation|2016-07-16 21:59:59;PunchingCard"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13230",
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
                                    "2015-10-22"
                                ],
                                "Clock": [
                                    "16:32:51"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13230",
                            "entity": "Events"
                        },
                        "Key": [
                            "entryPaymentRespiteDays"
                        ],
                        "Value": [
                            "30"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2015-07-17"
                                ],
                                "Clock": [
                                    "05:22:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13230",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_PaymentEventId"
                        ],
                        "Value": [
                            "8"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2015-07-17"
                                ],
                                "Clock": [
                                    "05:22:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13230",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_Address"
                        ],
                        "Value": [
                            "O-Ringen AB;Lägerhyddsvägen 2 hus 38;752 37 Uppsala;Sverige|0771-49 90 00|info@oringen.se"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13230",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_EventClassChangeKeepsEntryDate"
                        ],
                        "Value": [
                            "1"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13230",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_AutoAssignRentalPunchingCard"
                        ],
                        "Value": [
                            "1"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13230",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_RefundAddress"
                        ],
                        "Value": [
                            "O-Ringen AB;Lägerhyddsvägen 2 hus 38;752 37 Uppsala;Sverige|0771-49 90 00|info@oringen.se"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13230",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_ForeignPaymentFee"
                        ],
                        "Value": [
                            "30"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2015-07-17"
                                ],
                                "Clock": [
                                    "05:22:00"
                                ]
                            }
                        ]
                    }
                ]
            },
            {
                "$": {
                    "eventForm": "IndMultiDay"
                },
                "EventId": [
                    "13231"
                ],
                "Name": [
                    {
                        "_": "O-Ringen Sälen 2016 Pre-O",
                        "$": {
                            "languageId": "sv"
                        }
                    }
                ],
                "EventClassificationId": [
                    "2"
                ],
                "EventStatusId": [
                    "5"
                ],
                "DisciplineId": [
                    "4"
                ],
                "StartDate": [
                    {
                        "Date": [
                            "2016-07-24"
                        ],
                        "Clock": [
                            "00:00:00"
                        ]
                    }
                ],
                "FinishDate": [
                    {
                        "Date": [
                            "2016-07-29"
                        ],
                        "Clock": [
                            "00:00:00"
                        ]
                    }
                ],
                "AlternativeDates": [
                    {
                        "Sequence": [
                            "1"
                        ],
                        "StartDate": [
                            {
                                "Date": [
                                    "2016-07-24"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "FinishDate": [
                            {
                                "Date": [
                                    "2016-07-29"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-06-21"
                                ],
                                "Clock": [
                                    "11:34:18"
                                ]
                            }
                        ]
                    }
                ],
                "Organiser": [
                    {
                        "OrganisationId": [
                            "611"
                        ]
                    }
                ],
                "ClassTypeId": [
                    "19",
                    "16",
                    "17"
                ],
                "EventRace": [
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Long"
                        },
                        "EventRaceId": [
                            "13989"
                        ],
                        "EventId": [
                            "13231"
                        ],
                        "Name": [
                            {
                                "_": "Etapp 1",
                                "$": {
                                    "languageId": "sv"
                                }
                            }
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-24"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "61.17824",
                                    "x": "12.96501"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-06-21"
                                ],
                                "Clock": [
                                    "11:34:18"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "1884",
                                        "$": {
                                            "type": "nat",
                                            "idManager": "Eventor"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Long"
                        },
                        "EventRaceId": [
                            "13990"
                        ],
                        "EventId": [
                            "13231"
                        ],
                        "Name": [
                            {
                                "_": "Etapp 2",
                                "$": {
                                    "languageId": "sv"
                                }
                            }
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-25"
                                ],
                                "Clock": [
                                    "06:00:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "61.1782",
                                    "x": "12.96518"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-06-21"
                                ],
                                "Clock": [
                                    "11:34:18"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "1884",
                                        "$": {
                                            "type": "nat",
                                            "idManager": "Eventor"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Long"
                        },
                        "EventRaceId": [
                            "13991"
                        ],
                        "EventId": [
                            "13231"
                        ],
                        "Name": [
                            {
                                "_": "Etapp 3",
                                "$": {
                                    "languageId": "sv"
                                }
                            }
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-26"
                                ],
                                "Clock": [
                                    "12:00:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "61.15579",
                                    "x": "13.20382"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-06-21"
                                ],
                                "Clock": [
                                    "11:34:18"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "1884",
                                        "$": {
                                            "type": "nat",
                                            "idManager": "Eventor"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Long"
                        },
                        "EventRaceId": [
                            "13992"
                        ],
                        "EventId": [
                            "13231"
                        ],
                        "Name": [
                            {
                                "_": "Etapp 4",
                                "$": {
                                    "languageId": "sv"
                                }
                            }
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-28"
                                ],
                                "Clock": [
                                    "10:00:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "61.15572",
                                    "x": "13.11659"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-06-21"
                                ],
                                "Clock": [
                                    "11:34:18"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "1884",
                                        "$": {
                                            "type": "nat",
                                            "idManager": "Eventor"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Long"
                        },
                        "EventRaceId": [
                            "13993"
                        ],
                        "EventId": [
                            "13231"
                        ],
                        "Name": [
                            {
                                "_": "Etapp 5",
                                "$": {
                                    "languageId": "sv"
                                }
                            }
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-29"
                                ],
                                "Clock": [
                                    "00:00:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "61.15631",
                                    "x": "13.11662"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-06-21"
                                ],
                                "Clock": [
                                    "11:34:18"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "1884",
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
                    "http://www.oringen.se"
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
                            "2016-06-21"
                        ],
                        "Clock": [
                            "11:34:19"
                        ]
                    }
                ],
                "ModifiedBy": [
                    {
                        "PersonId": [
                            {
                                "_": "21036",
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
                            "id": "13231",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_EntryTermsAndConditions"
                        ],
                        "Value": [
                            "en;I accept the agreement regarding entries at http://oringen.se/terms|sv;Jag godkänner villkoren för anmälan enligt http://oringen.se/villkor"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2015-07-17"
                                ],
                                "Clock": [
                                    "05:22:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13231",
                            "entity": "Events"
                        },
                        "Key": [
                            "entryPaymentRespiteDays"
                        ],
                        "Value": [
                            "30"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2015-07-17"
                                ],
                                "Clock": [
                                    "05:22:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13231",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_ForeignPaymentFee"
                        ],
                        "Value": [
                            "30"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2015-07-17"
                                ],
                                "Clock": [
                                    "05:22:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13231",
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
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "09:03:45"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13231",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_KeepOrdersAfterPaymentDeadline"
                        ],
                        "Value": [
                            "1"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13231",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_PaymentEventId"
                        ],
                        "Value": [
                            "8"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2015-07-17"
                                ],
                                "Clock": [
                                    "05:22:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13231",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_EntryChangeDeadlines"
                        ],
                        "Value": [
                            "2016-06-01 21:59:59;ServiceRequests|2016-06-01 21:59:59;EventClass,EventRaces,NumberOfCompetitors,Person,Organisation"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13231",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_EventClassChangeKeepsEntryDate"
                        ],
                        "Value": [
                            "1"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13231",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_RefundAddress"
                        ],
                        "Value": [
                            "O-Ringen AB;Lägerhyddsvägen 2 hus 38;752 37 Uppsala;Sverige|0771-49 90 00|info@oringen.se"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13231",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_Address"
                        ],
                        "Value": [
                            "O-Ringen AB;Lägerhyddsvägen 2 hus 38;752 37 Uppsala;Sverige|0771-49 90 00|info@oringen.se"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-03-31"
                                ],
                                "Clock": [
                                    "02:00:00"
                                ]
                            }
                        ]
                    }
                ]
            },
            {
                "$": {
                    "eventForm": "RelaySingleDay"
                },
                "EventId": [
                    "13850"
                ],
                "Name": [
                    {
                        "_": "O-Ringen AXA-stafetten",
                        "$": {
                            "languageId": "sv"
                        }
                    }
                ],
                "EventClassificationId": [
                    "2"
                ],
                "EventStatusId": [
                    "5"
                ],
                "DisciplineId": [
                    "1"
                ],
                "StartDate": [
                    {
                        "Date": [
                            "2016-07-23"
                        ],
                        "Clock": [
                            "17:00:00"
                        ]
                    }
                ],
                "FinishDate": [
                    {
                        "Date": [
                            "2016-07-23"
                        ],
                        "Clock": [
                            "19:00:00"
                        ]
                    }
                ],
                "Organiser": [
                    {
                        "OrganisationId": [
                            "611"
                        ]
                    }
                ],
                "ClassTypeId": [
                    "17"
                ],
                "EventRace": [
                    {
                        "$": {
                            "raceLightCondition": "Day",
                            "raceDistance": "Sprint"
                        },
                        "EventRaceId": [
                            "14629"
                        ],
                        "EventId": [
                            "13850"
                        ],
                        "Name": [
                            ""
                        ],
                        "RaceDate": [
                            {
                                "Date": [
                                    "2016-07-23"
                                ],
                                "Clock": [
                                    "17:00:00"
                                ]
                            }
                        ],
                        "EventCenterPosition": [
                            {
                                "$": {
                                    "y": "61.15657",
                                    "x": "13.20319"
                                }
                            }
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-06-20"
                                ],
                                "Clock": [
                                    "11:56:57"
                                ]
                            }
                        ],
                        "ModifiedBy": [
                            {
                                "PersonId": [
                                    {
                                        "_": "21036",
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
                    "http://www.oringen.se"
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
                            "11:56:57"
                        ]
                    }
                ],
                "ModifiedBy": [
                    {
                        "PersonId": [
                            {
                                "_": "21036",
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
                            "id": "13850",
                            "entity": "Events"
                        },
                        "Key": [
                            "Eventor_RelayLineupSubmissionDeadline"
                        ],
                        "Value": [
                            "2016-07-23 11:00:59"
                        ],
                        "ModifyDate": [
                            {
                                "Date": [
                                    "2016-06-20"
                                ],
                                "Clock": [
                                    "11:54:31"
                                ]
                            }
                        ]
                    },
                    {
                        "$": {
                            "id": "13850",
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
                                    "2015-10-08"
                                ],
                                "Clock": [
                                    "15:54:23"
                                ]
                            }
                        ]
                    }
                ]
            }
        ]
    }
}

        """
