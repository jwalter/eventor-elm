module Main exposing (..)

import Html exposing (..)
import Competitions.Mock as Mock
import Competitions.StartList as StartList
import Competitions.Messages exposing (Msg)


main : Html.Html Msg
main =
    let
        startList =
            Mock.stringToStartList smallRace

        
    in
      div []
        [ (StartList.view (Just startList) "17257")
        , text (toString startList)
        ]

smallRace : String
smallRace =
  """
{
  "StartList": {
    "Event": [
      {
        "$": {
          "eventForm": "IndSingleDay"
        },
        "EventId": [
          "16375"
        ],
        "Name": [
          {
            "_": "Sörklubbs Rötjärn",
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
              "2016-07-12"
            ],
            "Clock": [
              "17:00:00"
            ]
          }
        ],
        "FinishDate": [
          {
            "Date": [
              "2016-07-12"
            ],
            "Clock": [
              "17:00:00"
            ]
          }
        ],
        "Organiser": [
          {
            "OrganisationId": [
              "31"
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
              "2016-07-12"
            ],
            "Clock": [
              "21:30:21"
            ]
          }
        ],
        "ModifiedBy": [
          {
            "PersonId": [
              {
                "_": "78012",
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
          "numberOfEntries": "22"
        },
        "EventClass": [
          {
            "$": {
              "totalResult": "Y",
              "timePresentation": "Y",
              "teamEntry": "N",
              "sex": "B",
              "sequence": "825",
              "numberOfVacancies": "0",
              "numberOfPrizes": "0",
              "numberOfLegs": "1",
              "numberInTeam": "1",
              "normalizedClass": "Y",
              "maxNumberInClass": "0",
              "divideClassMethod": "divideByClub",
              "allowEntryInAdvance": "Y",
              "actualForRanking": "N"
            },
            "EventClassId": [
              "256169"
            ],
            "Name": [
              {
                "_": "Öppen motion 7",
                "$": {
                  "languageId": "sv"
                }
              }
            ],
            "ClassShortName": [
              "ÖM7"
            ],
            "EventClassStatus": [
              {
                "$": {
                  "value": "normal"
                }
              }
            ],
            "EventId": [
              "16375"
            ],
            "ClassTypeId": [
              "19"
            ],
            "BaseClassId": [
              "100"
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
                  "2016-07-07"
                ],
                "Clock": [
                  "23:25:50"
                ]
              }
            ],
            "ClassRaceInfo": [
              {
                "$": {
                  "timeResolution": "seconds",
                  "restartedTeamsAfter": "Y",
                  "relayLeg": "1",
                  "rankingRace": "N",
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
                  "294169"
                ],
                "EventRaceId": [
                  "17256"
                ],
                "EventClassId": [
                  "256169"
                ],
                "Name": [
                  ""
                ],
                "FirstStart": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:30:00"
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
                      "2016-07-07"
                    ],
                    "Clock": [
                      "23:25:50"
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
                  "sex": "M"
                },
                "PersonName": [
                  {
                    "Family": [
                      "Engblom"
                    ],
                    "Given": [
                      {
                        "_": "Göran",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "2567",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1958-05-01"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "448866"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:49:15"
                    ]
                  }
                ],
                "StartId": [
                  "f8d9a614-e85c-4041-8132-d02f05675659"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Svensson"
                    ],
                    "Given": [
                      {
                        "_": "Lars-Ivar",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "50849",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1947-10-13"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "450092"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:24:15"
                    ]
                  }
                ],
                "StartId": [
                  "92108e04-6ec3-44ad-bc9c-15b4e1e9e80b"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Ottenbäck"
                    ],
                    "Given": [
                      {
                        "_": "Annika",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "1745",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1967-06-15"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "1879716"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:41:00"
                    ]
                  }
                ],
                "StartId": [
                  "5ff8ba87-c563-411c-be16-c27de8c88886"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Johansson"
                    ],
                    "Given": [
                      {
                        "_": "Nisse",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "11388",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1954-03-18"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "540319"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:49:16"
                    ]
                  }
                ],
                "StartId": [
                  "eca3979c-b119-4e8f-b0a5-d46da190cc0e"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Hoof"
                    ],
                    "Given": [
                      {
                        "_": "Kaj",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "2564",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1952-03-21"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "520321"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:32:15"
                    ]
                  }
                ],
                "StartId": [
                  "fa059cbf-55ed-4967-bb08-90b5e7a2522b"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Johansson"
                    ],
                    "Given": [
                      {
                        "_": "Emil",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "120841",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2000-10-09"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "1906177"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:03:27"
                    ]
                  }
                ],
                "StartId": [
                  "6bff27d0-d32c-4fd1-92a1-088ae0473885"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Andersson"
                    ],
                    "Given": [
                      {
                        "_": "Albin",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "105672",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2000-01-16"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "1882740"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:19:40"
                    ]
                  }
                ],
                "StartId": [
                  "85eeaf72-1c42-48ac-90b4-7d654a0cd9a0"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Sundström"
                    ],
                    "Given": [
                      {
                        "_": "Rune",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "23201",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1955-03-06"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "379"
                ],
                "Name": [
                  {
                    "_": "Söderhamns OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Söderhamns OK",
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
                "CCardId": [
                  "37665"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:21:21"
                    ]
                  }
                ],
                "StartId": [
                  "c0d9d31d-8cad-4d5b-97e4-8ecb37d67d4b"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Bergqvist"
                    ],
                    "Given": [
                      {
                        "_": "Göran",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "70468",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1968-03-05"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "439373"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:46:45"
                    ]
                  }
                ],
                "StartId": [
                  "9e224aab-46e4-44fc-ad0e-faa304b2570f"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Andersson"
                    ],
                    "Given": [
                      {
                        "_": "Erik",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "52708",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1961-08-28"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "431"
                ],
                "Name": [
                  {
                    "_": "Vallsta SK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Vallsta SK",
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
                "CCardId": [
                  "610828"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:21:01"
                    ]
                  }
                ],
                "StartId": [
                  "315fd415-2a9c-4343-a2c4-76e79b628f46"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Ericson"
                    ],
                    "Given": [
                      {
                        "_": "Marianne",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "2557",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1956-02-23"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "39804"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:38:28"
                    ]
                  }
                ],
                "StartId": [
                  "7a08205a-d334-46c0-9532-8921c86225b5"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Blom"
                    ],
                    "Given": [
                      {
                        "_": "Pernilla",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "44837",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1991-03-01"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "910301"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:15:21"
                    ]
                  }
                ],
                "StartId": [
                  "12964215-5421-4832-8747-64bbe86a8325"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Berglund"
                    ],
                    "Given": [
                      {
                        "_": "John",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "41788",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1936-03-04"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "13944"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:03:23"
                    ]
                  }
                ],
                "StartId": [
                  "32aa950e-10c2-42dd-a7d3-70421664cfd1"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Winblad"
                    ],
                    "Given": [
                      {
                        "_": "Birgitta",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "4777",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1957-02-08"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "1570208"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:14:05"
                    ]
                  }
                ],
                "StartId": [
                  "f21c1120-53a1-481d-a82c-ab82628805d0"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Sandberg"
                    ],
                    "Given": [
                      {
                        "_": "Elis",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "74101",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2002-07-06"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "2075202"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:30:17"
                    ]
                  }
                ],
                "StartId": [
                  "20aed958-7224-4447-8882-9aa08fdfc215"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Åkesson"
                    ],
                    "Given": [
                      {
                        "_": "Peter",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "145762",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1968-03-15"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "2075136"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:25:28"
                    ]
                  }
                ],
                "StartId": [
                  "810b69fd-eb06-491a-96c9-b882c00e9cc6"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Östberg"
                    ],
                    "Given": [
                      {
                        "_": "Monika",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "36859",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1969-05-23"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "446233"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:30:15"
                    ]
                  }
                ],
                "StartId": [
                  "1781a8b1-be2c-4dd0-83a6-4783c8347502"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Bånga"
                    ],
                    "Given": [
                      {
                        "_": "Helena",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "78012",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1969-07-24"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "446100"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:13:33"
                    ]
                  }
                ],
                "StartId": [
                  "f1bdfe1d-495f-46e7-82e4-5cc8eca63847"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Hansson Bånga"
                    ],
                    "Given": [
                      {
                        "_": "Adrian",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "74099",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2003-10-01"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "9031001"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:13:32"
                    ]
                  }
                ],
                "StartId": [
                  "cb00ea49-9a38-4550-9c93-72d02fcc827f"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Kihlström"
                    ],
                    "Given": [
                      {
                        "_": "Joel",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "86163",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2001-07-05"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "572001"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:09:54"
                    ]
                  }
                ],
                "StartId": [
                  "fd8c87c3-84cc-4a84-8d77-46f985f4c104"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Andersson"
                    ],
                    "Given": [
                      {
                        "_": "Anders",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "49762",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1969-06-13"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "1037669"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:27:35"
                    ]
                  }
                ],
                "StartId": [
                  "390a3234-a4f2-46d7-9404-2621f6987ef7"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Landin"
                    ],
                    "Given": [
                      {
                        "_": "Curt",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "84333",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1960-08-31"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "2104475"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:40:58"
                    ]
                  }
                ],
                "StartId": [
                  "96383438-aa83-40c2-8d48-c20265706bfc"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
                    ]
                  }
                ]
              }
            ]
          }
        ]
      },
      {
        "$": {
          "numberOfEntries": "22"
        },
        "EventClass": [
          {
            "$": {
              "totalResult": "Y",
              "timePresentation": "Y",
              "teamEntry": "N",
              "sex": "B",
              "sequence": "825",
              "numberOfVacancies": "0",
              "numberOfPrizes": "0",
              "numberOfLegs": "1",
              "numberInTeam": "1",
              "normalizedClass": "Y",
              "maxNumberInClass": "0",
              "divideClassMethod": "divideByClub",
              "allowEntryInAdvance": "Y",
              "actualForRanking": "N"
            },
            "EventClassId": [
              "256169"
            ],
            "Name": [
              {
                "_": "Öppen motion 7",
                "$": {
                  "languageId": "sv"
                }
              }
            ],
            "ClassShortName": [
              "ÖM7"
            ],
            "EventClassStatus": [
              {
                "$": {
                  "value": "normal"
                }
              }
            ],
            "EventId": [
              "16375"
            ],
            "ClassTypeId": [
              "19"
            ],
            "BaseClassId": [
              "100"
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
                  "2016-07-07"
                ],
                "Clock": [
                  "23:25:50"
                ]
              }
            ],
            "ClassRaceInfo": [
              {
                "$": {
                  "timeResolution": "seconds",
                  "restartedTeamsAfter": "Y",
                  "relayLeg": "1",
                  "rankingRace": "N",
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
                  "294169"
                ],
                "EventRaceId": [
                  "17257"
                ],
                "EventClassId": [
                  "256169"
                ],
                "Name": [
                  ""
                ],
                "FirstStart": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:30:00"
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
                      "2016-07-07"
                    ],
                    "Clock": [
                      "23:25:50"
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
                  "sex": "M"
                },
                "PersonName": [
                  {
                    "Family": [
                      "Engblom"
                    ],
                    "Given": [
                      {
                        "_": "Göran",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "2567",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1958-05-01"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "448866"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:49:15"
                    ]
                  }
                ],
                "StartId": [
                  "f8d9a614-e85c-4041-8132-d02f05675659"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Svensson"
                    ],
                    "Given": [
                      {
                        "_": "Lars-Ivar",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "50849",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1947-10-13"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "450092"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:24:15"
                    ]
                  }
                ],
                "StartId": [
                  "92108e04-6ec3-44ad-bc9c-15b4e1e9e80b"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Ottenbäck"
                    ],
                    "Given": [
                      {
                        "_": "Annika",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "1745",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1967-06-15"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "1879716"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:41:00"
                    ]
                  }
                ],
                "StartId": [
                  "5ff8ba87-c563-411c-be16-c27de8c88886"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Johansson"
                    ],
                    "Given": [
                      {
                        "_": "Nisse",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "11388",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1954-03-18"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "540319"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:49:16"
                    ]
                  }
                ],
                "StartId": [
                  "eca3979c-b119-4e8f-b0a5-d46da190cc0e"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Hoof"
                    ],
                    "Given": [
                      {
                        "_": "Kaj",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "2564",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1952-03-21"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "520321"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:32:15"
                    ]
                  }
                ],
                "StartId": [
                  "fa059cbf-55ed-4967-bb08-90b5e7a2522b"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Johansson"
                    ],
                    "Given": [
                      {
                        "_": "Emil",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "120841",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2000-10-09"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "1906177"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:03:27"
                    ]
                  }
                ],
                "StartId": [
                  "6bff27d0-d32c-4fd1-92a1-088ae0473885"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Andersson"
                    ],
                    "Given": [
                      {
                        "_": "Albin",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "105672",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2000-01-16"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "1882740"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:19:40"
                    ]
                  }
                ],
                "StartId": [
                  "85eeaf72-1c42-48ac-90b4-7d654a0cd9a0"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Sundström"
                    ],
                    "Given": [
                      {
                        "_": "Rune",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "23201",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1955-03-06"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "379"
                ],
                "Name": [
                  {
                    "_": "Söderhamns OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Söderhamns OK",
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
                "CCardId": [
                  "37665"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:21:21"
                    ]
                  }
                ],
                "StartId": [
                  "c0d9d31d-8cad-4d5b-97e4-8ecb37d67d4b"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Bergqvist"
                    ],
                    "Given": [
                      {
                        "_": "Göran",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "70468",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1968-03-05"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "439373"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:46:45"
                    ]
                  }
                ],
                "StartId": [
                  "9e224aab-46e4-44fc-ad0e-faa304b2570f"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Andersson"
                    ],
                    "Given": [
                      {
                        "_": "Erik",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "52708",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1961-08-28"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "431"
                ],
                "Name": [
                  {
                    "_": "Vallsta SK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Vallsta SK",
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
                "CCardId": [
                  "610828"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:21:01"
                    ]
                  }
                ],
                "StartId": [
                  "315fd415-2a9c-4343-a2c4-76e79b628f46"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Ericson"
                    ],
                    "Given": [
                      {
                        "_": "Marianne",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "2557",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1956-02-23"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "39804"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:38:28"
                    ]
                  }
                ],
                "StartId": [
                  "7a08205a-d334-46c0-9532-8921c86225b5"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Blom"
                    ],
                    "Given": [
                      {
                        "_": "Pernilla",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "44837",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1991-03-01"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "910301"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:15:21"
                    ]
                  }
                ],
                "StartId": [
                  "12964215-5421-4832-8747-64bbe86a8325"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Berglund"
                    ],
                    "Given": [
                      {
                        "_": "John",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "41788",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1936-03-04"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "13944"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:03:23"
                    ]
                  }
                ],
                "StartId": [
                  "32aa950e-10c2-42dd-a7d3-70421664cfd1"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Winblad"
                    ],
                    "Given": [
                      {
                        "_": "Birgitta",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "4777",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1957-02-08"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "1570208"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:14:05"
                    ]
                  }
                ],
                "StartId": [
                  "f21c1120-53a1-481d-a82c-ab82628805d0"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Sandberg"
                    ],
                    "Given": [
                      {
                        "_": "Elis",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "74101",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2002-07-06"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "2075202"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:30:17"
                    ]
                  }
                ],
                "StartId": [
                  "20aed958-7224-4447-8882-9aa08fdfc215"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Åkesson"
                    ],
                    "Given": [
                      {
                        "_": "Peter",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "145762",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1968-03-15"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "2075136"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:25:28"
                    ]
                  }
                ],
                "StartId": [
                  "810b69fd-eb06-491a-96c9-b882c00e9cc6"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Östberg"
                    ],
                    "Given": [
                      {
                        "_": "Monika",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "36859",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1969-05-23"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "446233"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:30:15"
                    ]
                  }
                ],
                "StartId": [
                  "1781a8b1-be2c-4dd0-83a6-4783c8347502"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Bånga"
                    ],
                    "Given": [
                      {
                        "_": "Helena",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "78012",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1969-07-24"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "446100"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:13:33"
                    ]
                  }
                ],
                "StartId": [
                  "f1bdfe1d-495f-46e7-82e4-5cc8eca63847"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Hansson Bånga"
                    ],
                    "Given": [
                      {
                        "_": "Adrian",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "74099",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2003-10-01"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "9031001"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:13:32"
                    ]
                  }
                ],
                "StartId": [
                  "cb00ea49-9a38-4550-9c93-72d02fcc827f"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Kihlström"
                    ],
                    "Given": [
                      {
                        "_": "Joel",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "86163",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2001-07-05"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "572001"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:09:54"
                    ]
                  }
                ],
                "StartId": [
                  "fd8c87c3-84cc-4a84-8d77-46f985f4c104"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Andersson"
                    ],
                    "Given": [
                      {
                        "_": "Anders",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "49762",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1969-06-13"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "1037669"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:27:35"
                    ]
                  }
                ],
                "StartId": [
                  "390a3234-a4f2-46d7-9404-2621f6987ef7"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Landin"
                    ],
                    "Given": [
                      {
                        "_": "Curt",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "84333",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1960-08-31"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "2104475"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:40:58"
                    ]
                  }
                ],
                "StartId": [
                  "96383438-aa83-40c2-8d48-c20265706bfc"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
                    ]
                  }
                ]
              }
            ]
          }
        ]
      },
      {
        "$": {
          "numberOfEntries": "22"
        },
        "EventClass": [
          {
            "$": {
              "totalResult": "Y",
              "timePresentation": "Y",
              "teamEntry": "N",
              "sex": "B",
              "sequence": "825",
              "numberOfVacancies": "0",
              "numberOfPrizes": "0",
              "numberOfLegs": "1",
              "numberInTeam": "1",
              "normalizedClass": "Y",
              "maxNumberInClass": "0",
              "divideClassMethod": "divideByClub",
              "allowEntryInAdvance": "Y",
              "actualForRanking": "N"
            },
            "EventClassId": [
              "256169"
            ],
            "Name": [
              {
                "_": "Öppen motion 7",
                "$": {
                  "languageId": "sv"
                }
              }
            ],
            "ClassShortName": [
              "ÖM7"
            ],
            "EventClassStatus": [
              {
                "$": {
                  "value": "normal"
                }
              }
            ],
            "EventId": [
              "16375"
            ],
            "ClassTypeId": [
              "19"
            ],
            "BaseClassId": [
              "100"
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
                  "2016-07-07"
                ],
                "Clock": [
                  "23:25:50"
                ]
              }
            ],
            "ClassRaceInfo": [
              {
                "$": {
                  "timeResolution": "seconds",
                  "restartedTeamsAfter": "Y",
                  "relayLeg": "1",
                  "rankingRace": "N",
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
                  "294169"
                ],
                "EventRaceId": [
                  "17256"
                ],
                "EventClassId": [
                  "256169"
                ],
                "Name": [
                  ""
                ],
                "FirstStart": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:30:00"
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
                      "2016-07-07"
                    ],
                    "Clock": [
                      "23:25:50"
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
                  "sex": "M"
                },
                "PersonName": [
                  {
                    "Family": [
                      "Engblom"
                    ],
                    "Given": [
                      {
                        "_": "Göran",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "2567",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1958-05-01"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "448866"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:49:15"
                    ]
                  }
                ],
                "StartId": [
                  "f8d9a614-e85c-4041-8132-d02f05675659"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Svensson"
                    ],
                    "Given": [
                      {
                        "_": "Lars-Ivar",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "50849",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1947-10-13"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "450092"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:24:15"
                    ]
                  }
                ],
                "StartId": [
                  "92108e04-6ec3-44ad-bc9c-15b4e1e9e80b"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Ottenbäck"
                    ],
                    "Given": [
                      {
                        "_": "Annika",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "1745",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1967-06-15"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "1879716"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:41:00"
                    ]
                  }
                ],
                "StartId": [
                  "5ff8ba87-c563-411c-be16-c27de8c88886"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Johansson"
                    ],
                    "Given": [
                      {
                        "_": "Nisse",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "11388",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1954-03-18"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "540319"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:49:16"
                    ]
                  }
                ],
                "StartId": [
                  "eca3979c-b119-4e8f-b0a5-d46da190cc0e"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Hoof"
                    ],
                    "Given": [
                      {
                        "_": "Kaj",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "2564",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1952-03-21"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "520321"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:32:15"
                    ]
                  }
                ],
                "StartId": [
                  "fa059cbf-55ed-4967-bb08-90b5e7a2522b"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Johansson"
                    ],
                    "Given": [
                      {
                        "_": "Emil",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "120841",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2000-10-09"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "1906177"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:03:27"
                    ]
                  }
                ],
                "StartId": [
                  "6bff27d0-d32c-4fd1-92a1-088ae0473885"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Andersson"
                    ],
                    "Given": [
                      {
                        "_": "Albin",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "105672",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2000-01-16"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "1882740"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:19:40"
                    ]
                  }
                ],
                "StartId": [
                  "85eeaf72-1c42-48ac-90b4-7d654a0cd9a0"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Sundström"
                    ],
                    "Given": [
                      {
                        "_": "Rune",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "23201",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1955-03-06"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "379"
                ],
                "Name": [
                  {
                    "_": "Söderhamns OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Söderhamns OK",
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
                "CCardId": [
                  "37665"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:21:21"
                    ]
                  }
                ],
                "StartId": [
                  "c0d9d31d-8cad-4d5b-97e4-8ecb37d67d4b"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Bergqvist"
                    ],
                    "Given": [
                      {
                        "_": "Göran",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "70468",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1968-03-05"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "439373"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:46:45"
                    ]
                  }
                ],
                "StartId": [
                  "9e224aab-46e4-44fc-ad0e-faa304b2570f"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Andersson"
                    ],
                    "Given": [
                      {
                        "_": "Erik",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "52708",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1961-08-28"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "431"
                ],
                "Name": [
                  {
                    "_": "Vallsta SK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Vallsta SK",
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
                "CCardId": [
                  "610828"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:21:01"
                    ]
                  }
                ],
                "StartId": [
                  "315fd415-2a9c-4343-a2c4-76e79b628f46"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Ericson"
                    ],
                    "Given": [
                      {
                        "_": "Marianne",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "2557",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1956-02-23"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "39804"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:38:28"
                    ]
                  }
                ],
                "StartId": [
                  "7a08205a-d334-46c0-9532-8921c86225b5"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Blom"
                    ],
                    "Given": [
                      {
                        "_": "Pernilla",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "44837",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1991-03-01"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "910301"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:15:21"
                    ]
                  }
                ],
                "StartId": [
                  "12964215-5421-4832-8747-64bbe86a8325"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Berglund"
                    ],
                    "Given": [
                      {
                        "_": "John",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "41788",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1936-03-04"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "13944"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:03:23"
                    ]
                  }
                ],
                "StartId": [
                  "32aa950e-10c2-42dd-a7d3-70421664cfd1"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Winblad"
                    ],
                    "Given": [
                      {
                        "_": "Birgitta",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "4777",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1957-02-08"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "1570208"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:14:05"
                    ]
                  }
                ],
                "StartId": [
                  "f21c1120-53a1-481d-a82c-ab82628805d0"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Sandberg"
                    ],
                    "Given": [
                      {
                        "_": "Elis",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "74101",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2002-07-06"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "2075202"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:30:17"
                    ]
                  }
                ],
                "StartId": [
                  "20aed958-7224-4447-8882-9aa08fdfc215"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Åkesson"
                    ],
                    "Given": [
                      {
                        "_": "Peter",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "145762",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1968-03-15"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "2075136"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:25:28"
                    ]
                  }
                ],
                "StartId": [
                  "810b69fd-eb06-491a-96c9-b882c00e9cc6"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Östberg"
                    ],
                    "Given": [
                      {
                        "_": "Monika",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "36859",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1969-05-23"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "446233"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:30:15"
                    ]
                  }
                ],
                "StartId": [
                  "1781a8b1-be2c-4dd0-83a6-4783c8347502"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Bånga"
                    ],
                    "Given": [
                      {
                        "_": "Helena",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "78012",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1969-07-24"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "446100"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:13:33"
                    ]
                  }
                ],
                "StartId": [
                  "f1bdfe1d-495f-46e7-82e4-5cc8eca63847"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Hansson Bånga"
                    ],
                    "Given": [
                      {
                        "_": "Adrian",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "74099",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2003-10-01"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "9031001"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:13:32"
                    ]
                  }
                ],
                "StartId": [
                  "cb00ea49-9a38-4550-9c93-72d02fcc827f"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Kihlström"
                    ],
                    "Given": [
                      {
                        "_": "Joel",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "86163",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2001-07-05"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "572001"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:09:54"
                    ]
                  }
                ],
                "StartId": [
                  "fd8c87c3-84cc-4a84-8d77-46f985f4c104"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Andersson"
                    ],
                    "Given": [
                      {
                        "_": "Anders",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "49762",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1969-06-13"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "1037669"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:27:35"
                    ]
                  }
                ],
                "StartId": [
                  "390a3234-a4f2-46d7-9404-2621f6987ef7"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Landin"
                    ],
                    "Given": [
                      {
                        "_": "Curt",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "84333",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1960-08-31"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "2104475"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:40:58"
                    ]
                  }
                ],
                "StartId": [
                  "96383438-aa83-40c2-8d48-c20265706bfc"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
                    ]
                  }
                ]
              }
            ]
          }
        ]
      },
      {
        "$": {
          "numberOfEntries": "5"
        },
        "EventClass": [
          {
            "$": {
              "totalResult": "Y",
              "timePresentation": "Y",
              "teamEntry": "N",
              "sex": "B",
              "sequence": "805",
              "numberOfVacancies": "0",
              "numberOfPrizes": "0",
              "numberOfLegs": "1",
              "numberInTeam": "1",
              "normalizedClass": "Y",
              "maxNumberInClass": "0",
              "divideClassMethod": "divideByClub",
              "allowEntryInAdvance": "Y",
              "actualForRanking": "N"
            },
            "EventClassId": [
              "256168"
            ],
            "Name": [
              {
                "_": "Öppen motion 5",
                "$": {
                  "languageId": "sv"
                }
              }
            ],
            "ClassShortName": [
              "ÖM5"
            ],
            "EventClassStatus": [
              {
                "$": {
                  "value": "normal"
                }
              }
            ],
            "EventId": [
              "16375"
            ],
            "ClassTypeId": [
              "19"
            ],
            "BaseClassId": [
              "98"
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
                  "2016-07-07"
                ],
                "Clock": [
                  "23:25:50"
                ]
              }
            ],
            "ClassRaceInfo": [
              {
                "$": {
                  "timeResolution": "seconds",
                  "restartedTeamsAfter": "Y",
                  "relayLeg": "1",
                  "rankingRace": "N",
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
                  "294168"
                ],
                "EventRaceId": [
                  "17256"
                ],
                "EventClassId": [
                  "256168"
                ],
                "Name": [
                  ""
                ],
                "FirstStart": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:30:00"
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
                      "2016-07-07"
                    ],
                    "Clock": [
                      "23:25:50"
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
                  "sex": "M"
                },
                "PersonName": [
                  {
                    "Family": [
                      "Magnusson"
                    ],
                    "Given": [
                      {
                        "_": "Jakob",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "112531",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1975-07-10"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "2075171"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:08:23"
                    ]
                  }
                ],
                "StartId": [
                  "edc4d938-d0cc-4dd8-9c69-3cf1b5866390"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Andersson"
                    ],
                    "Given": [
                      {
                        "_": "Frida",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "115147",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2002-07-23"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "2075256"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:26:15"
                    ]
                  }
                ],
                "StartId": [
                  "ecba6f49-0672-4317-823d-e48b46157c93"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Skoglund"
                    ],
                    "Given": [
                      {
                        "_": "Elisabeth",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "123052",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1969-02-27"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "446006"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:26:17"
                    ]
                  }
                ],
                "StartId": [
                  "21390692-aa0f-4613-a506-f203252356b9"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                        "_": "Cherstin",
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
                  "431"
                ],
                "Name": [
                  {
                    "_": "Vallsta SK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Vallsta SK",
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
                "CCardId": [
                  "2075138"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:04:52"
                    ]
                  }
                ],
                "StartId": [
                  "7f3801eb-3427-42d0-aef2-08beee376758"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Kihlström"
                    ],
                    "Given": [
                      {
                        "_": "Anna",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "135057",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1975-03-14"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "450086"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:05:42"
                    ]
                  }
                ],
                "StartId": [
                  "24e6591b-3812-4d25-93be-9a8bf2f12187"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
                    ]
                  }
                ]
              }
            ]
          }
        ]
      },
      {
        "$": {
          "numberOfEntries": "14"
        },
        "EventClass": [
          {
            "$": {
              "totalResult": "Y",
              "timePresentation": "Y",
              "teamEntry": "N",
              "sex": "B",
              "sequence": "845",
              "numberOfVacancies": "0",
              "numberOfPrizes": "0",
              "numberOfLegs": "1",
              "numberInTeam": "1",
              "normalizedClass": "Y",
              "maxNumberInClass": "0",
              "divideClassMethod": "divideByClub",
              "allowEntryInAdvance": "Y",
              "actualForRanking": "N"
            },
            "EventClassId": [
              "256170"
            ],
            "Name": [
              {
                "_": "Öppen motion 9",
                "$": {
                  "languageId": "sv"
                }
              }
            ],
            "ClassShortName": [
              "ÖM9"
            ],
            "EventClassStatus": [
              {
                "$": {
                  "value": "normal"
                }
              }
            ],
            "EventId": [
              "16375"
            ],
            "ClassTypeId": [
              "19"
            ],
            "BaseClassId": [
              "102"
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
                  "2016-07-07"
                ],
                "Clock": [
                  "23:25:50"
                ]
              }
            ],
            "ClassRaceInfo": [
              {
                "$": {
                  "timeResolution": "seconds",
                  "restartedTeamsAfter": "Y",
                  "relayLeg": "1",
                  "rankingRace": "N",
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
                  "294170"
                ],
                "EventRaceId": [
                  "17256"
                ],
                "EventClassId": [
                  "256170"
                ],
                "Name": [
                  ""
                ],
                "FirstStart": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:30:00"
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
                      "2016-07-07"
                    ],
                    "Clock": [
                      "23:25:50"
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
                  "sex": "M"
                },
                "PersonName": [
                  {
                    "Family": [
                      "Davidsson"
                    ],
                    "Given": [
                      {
                        "_": "Andreas",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "30979",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1983-08-26"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "259351"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "16:57:49"
                    ]
                  }
                ],
                "StartId": [
                  "73964a1d-5af0-42ae-9588-abe47b9e8797"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Sundström"
                    ],
                    "Given": [
                      {
                        "_": "David",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "5532",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1986-11-27"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "379"
                ],
                "Name": [
                  {
                    "_": "Söderhamns OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Söderhamns OK",
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
                "CCardId": [
                  "8625750"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:28:50"
                    ]
                  }
                ],
                "StartId": [
                  "4588c200-a148-4a86-828c-435e425aa08d"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Stolt"
                    ],
                    "Given": [
                      {
                        "_": "Charlie",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "19410",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1993-05-25"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "9930525"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:28:44"
                    ]
                  }
                ],
                "StartId": [
                  "ce42a33d-8994-443c-8ce7-38daa35f6889"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Broman"
                    ],
                    "Given": [
                      {
                        "_": "Fredrik",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "32297",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1988-10-29"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "39834"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "19:14:59"
                    ]
                  }
                ],
                "StartId": [
                  "11883d49-0d3f-412e-aa0d-d9ab67730097"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Engström"
                    ],
                    "Given": [
                      {
                        "_": "Lasse",
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
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "39802"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:37:12"
                    ]
                  }
                ],
                "StartId": [
                  "384d13a4-6144-4305-af10-650e650696cf"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "L. Olofsson"
                    ],
                    "Given": [
                      {
                        "_": "Pär",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "4773",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1986-05-20"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "860520"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:35:04"
                    ]
                  }
                ],
                "StartId": [
                  "e14d3fae-5f95-4285-8623-a98ff3f1d61e"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Lysell"
                    ],
                    "Given": [
                      {
                        "_": "Jonatan",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "101163",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1991-06-17"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "19360"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:17:25"
                    ]
                  }
                ],
                "StartId": [
                  "2aca1db4-c0c2-4112-85be-9115c76d336b"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Hagård"
                    ],
                    "Given": [
                      {
                        "_": "Jannie",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "16275",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1990-04-12"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "294"
                ],
                "Name": [
                  {
                    "_": "OK Pan-Kristianstad",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "OK Pan-Kristianstad",
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
                "CCardId": [
                  "900412"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:40:17"
                    ]
                  }
                ],
                "StartId": [
                  "003bda07-48e6-47a3-a5bd-b1826472ff10"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Davidsson"
                    ],
                    "Given": [
                      {
                        "_": "Ellen",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "15258",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1986-02-24"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "860224"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:34:37"
                    ]
                  }
                ],
                "StartId": [
                  "deb3b93e-9894-42cb-866c-cf3f58a38bb1"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Pettersson"
                    ],
                    "Given": [
                      {
                        "_": "Björn-Ove",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "26400",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1958-04-22"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "638"
                ],
                "Name": [
                  {
                    "_": "Attunda OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Attunda OK",
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
                "CCardId": [
                  "580422"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:22:45"
                    ]
                  }
                ],
                "StartId": [
                  "41989722-c46d-41a8-989e-720271908ca7"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Jonsson"
                    ],
                    "Given": [
                      {
                        "_": "Frida",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "82481",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1997-01-26"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "39763"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:58:57"
                    ]
                  }
                ],
                "StartId": [
                  "8d6371fd-88c6-45b3-8110-1ca5e96787a2"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Johansson"
                    ],
                    "Given": [
                      {
                        "_": "Anders",
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
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "930809"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:34:09"
                    ]
                  }
                ],
                "StartId": [
                  "cd04f3ae-52f6-4d4e-9cac-3acb712ef3b4"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Lysell"
                    ],
                    "Given": [
                      {
                        "_": "Jesper",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "4772",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1989-04-27"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "2075273"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:25:21"
                    ]
                  }
                ],
                "StartId": [
                  "8ab63059-a3a4-4030-a5f6-599e7925c627"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Kvick"
                    ],
                    "Given": [
                      {
                        "_": "Tobias",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "131141",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1986-08-07"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "2075229"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:34:31"
                    ]
                  }
                ],
                "StartId": [
                  "4d26b13a-60d7-447f-91fd-9cd77f54a146"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
                    ]
                  }
                ]
              }
            ]
          }
        ]
      },
      {
        "$": {
          "numberOfEntries": "12"
        },
        "EventClass": [
          {
            "$": {
              "totalResult": "Y",
              "timePresentation": "Y",
              "teamEntry": "N",
              "sex": "B",
              "sequence": "785",
              "numberOfVacancies": "0",
              "numberOfPrizes": "0",
              "numberOfLegs": "1",
              "numberInTeam": "1",
              "normalizedClass": "Y",
              "maxNumberInClass": "0",
              "divideClassMethod": "divideByClub",
              "allowEntryInAdvance": "Y",
              "actualForRanking": "N"
            },
            "EventClassId": [
              "256167"
            ],
            "Name": [
              {
                "_": "Öppen motion 3",
                "$": {
                  "languageId": "sv"
                }
              }
            ],
            "ClassShortName": [
              "ÖM3"
            ],
            "EventClassStatus": [
              {
                "$": {
                  "value": "normal"
                }
              }
            ],
            "EventId": [
              "16375"
            ],
            "ClassTypeId": [
              "19"
            ],
            "BaseClassId": [
              "96"
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
                  "2016-07-07"
                ],
                "Clock": [
                  "23:25:50"
                ]
              }
            ],
            "ClassRaceInfo": [
              {
                "$": {
                  "timeResolution": "seconds",
                  "restartedTeamsAfter": "Y",
                  "relayLeg": "1",
                  "rankingRace": "N",
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
                  "294167"
                ],
                "EventRaceId": [
                  "17256"
                ],
                "EventClassId": [
                  "256167"
                ],
                "Name": [
                  ""
                ],
                "FirstStart": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:30:00"
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
                      "2016-07-07"
                    ],
                    "Clock": [
                      "23:25:50"
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
                "PersonName": [
                  {
                    "Family": [
                      "Karlsson"
                    ],
                    "Given": [
                      {
                        "_": "Rolf",
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
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "29089"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:50:19"
                    ]
                  }
                ],
                "StartId": [
                  "057cf58c-c64b-471c-a104-e7e32cb1ee9e"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Lysell"
                    ],
                    "Given": [
                      {
                        "_": "Folke",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "52026",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1952-01-25"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "29069"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:21:22"
                    ]
                  }
                ],
                "StartId": [
                  "4ac69845-0f63-48f0-baee-261448fc3ef5"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Sandberg"
                    ],
                    "Given": [
                      {
                        "_": "Ella",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "74100",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2004-08-26"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "2075226"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:30:13"
                    ]
                  }
                ],
                "StartId": [
                  "08222831-866b-482b-89e4-8facaac6a912"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Törngren"
                    ],
                    "Given": [
                      {
                        "_": "Åsa",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "75883",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1952-05-15"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "446282"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:54:37"
                    ]
                  }
                ],
                "StartId": [
                  "2698af82-0897-4bba-8d5b-9f301549c5d7"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Blom"
                    ],
                    "Given": [
                      {
                        "_": "Kerstin",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "36103",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1955-11-01"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "259326"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:15:02"
                    ]
                  }
                ],
                "StartId": [
                  "0dfb6eb6-79b8-49ad-a842-50eabf28f365"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Landin"
                    ],
                    "Given": [
                      {
                        "_": "Linda",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "138508",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1988-05-09"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "446253"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:39:17"
                    ]
                  }
                ],
                "StartId": [
                  "6aa993e8-ce0f-4684-a5ef-83d768dbeef0"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Johannessen"
                    ],
                    "Given": [
                      {
                        "_": "Fia",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "138472",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1989-08-23"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "226426"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:39:15"
                    ]
                  }
                ],
                "StartId": [
                  "f09cebfa-4d3f-40e6-9a0a-4a4e69fa0e53"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Magnusson"
                    ],
                    "Given": [
                      {
                        "_": "Leija",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "112665",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2004-08-19"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "2075242"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:08:14"
                    ]
                  }
                ],
                "StartId": [
                  "9e19997e-788f-4e82-a428-b8dfaae7b9da"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Magnusson"
                    ],
                    "Given": [
                      {
                        "_": "Leo",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "112662",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2006-12-22"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "2075161"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:08:37"
                    ]
                  }
                ],
                "StartId": [
                  "495ef053-5d10-4c7b-8f06-807329150ce3"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Nyman"
                    ],
                    "Given": [
                      {
                        "_": "Therese",
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
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "2075105"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:08:08"
                    ]
                  }
                ],
                "StartId": [
                  "ba6e8e4a-d0b0-4923-ac7b-7791632a3aa0"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Olsson"
                    ],
                    "Given": [
                      {
                        "_": "Malin",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "137598",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1975-05-24"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "379"
                ],
                "Name": [
                  {
                    "_": "Söderhamns OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Söderhamns OK",
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
                "CCardId": [
                  "1041075"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:59:32"
                    ]
                  }
                ],
                "StartId": [
                  "4266fc22-051b-443f-9161-c24c815ebe3f"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Mühle"
                    ],
                    "Given": [
                      {
                        "_": "Walter",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "137648",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1954-10-20"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "306"
                ],
                "Name": [
                  {
                    "_": "Rehns BK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Rehns BK",
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
                "CCardId": [
                  "1954121"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:46:27"
                    ]
                  }
                ],
                "StartId": [
                  "b29dd4c8-d63e-4f5a-b2fb-b842733ee814"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
                    ]
                  }
                ]
              }
            ]
          }
        ]
      },
      {
        "$": {
          "numberOfEntries": "7"
        },
        "EventClass": [
          {
            "$": {
              "totalResult": "Y",
              "timePresentation": "Y",
              "teamEntry": "N",
              "sex": "B",
              "sequence": "765",
              "numberOfVacancies": "0",
              "numberOfPrizes": "0",
              "numberOfLegs": "1",
              "numberInTeam": "1",
              "normalizedClass": "Y",
              "maxNumberInClass": "0",
              "divideClassMethod": "divideByClub",
              "allowEntryInAdvance": "Y",
              "actualForRanking": "N"
            },
            "EventClassId": [
              "256166"
            ],
            "Name": [
              {
                "_": "Öppen motion 1",
                "$": {
                  "languageId": "sv"
                }
              }
            ],
            "ClassShortName": [
              "ÖM1"
            ],
            "EventClassStatus": [
              {
                "$": {
                  "value": "normal"
                }
              }
            ],
            "EventId": [
              "16375"
            ],
            "ClassTypeId": [
              "19"
            ],
            "BaseClassId": [
              "94"
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
                  "2016-07-07"
                ],
                "Clock": [
                  "23:25:50"
                ]
              }
            ],
            "ClassRaceInfo": [
              {
                "$": {
                  "timeResolution": "seconds",
                  "restartedTeamsAfter": "Y",
                  "relayLeg": "1",
                  "rankingRace": "N",
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
                  "294166"
                ],
                "EventRaceId": [
                  "17256"
                ],
                "EventClassId": [
                  "256166"
                ],
                "Name": [
                  ""
                ],
                "FirstStart": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:30:00"
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
                      "2016-07-07"
                    ],
                    "Clock": [
                      "23:25:50"
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
                      "Johansson"
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
                    "_": "120839",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2006-05-21"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "1244175"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:11:01"
                    ]
                  }
                ],
                "StartId": [
                  "7851adb0-a869-49d0-8de3-2874c81ef681"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Johansson"
                    ],
                    "Given": [
                      {
                        "_": "Ulrika",
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
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "2075291"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:11:03"
                    ]
                  }
                ],
                "StartId": [
                  "303ffe46-c29d-4d44-972a-e294acaf380c"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                        "_": "Tilda",
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
                  "431"
                ],
                "Name": [
                  {
                    "_": "Vallsta SK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Vallsta SK",
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
                "CCardId": [
                  "42812"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:08:34"
                    ]
                  }
                ],
                "StartId": [
                  "d942bc68-c063-4c65-9123-126d5450b4b1"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Åkesson"
                    ],
                    "Given": [
                      {
                        "_": "Emma",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "130166",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2001-06-19"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "2075246"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:23:12"
                    ]
                  }
                ],
                "StartId": [
                  "6a034c19-3fcb-4541-9d42-0cdca5bd6296"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Rosenqvist"
                    ],
                    "Given": [
                      {
                        "_": "Henrik",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "145763",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "2002-07-11"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "31"
                ],
                "Name": [
                  {
                    "_": "Alfta-Ösa OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Alfta-Ösa OK",
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
                "CCardId": [
                  "2075245"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "17:17:48"
                    ]
                  }
                ],
                "StartId": [
                  "a7f2ac12-1d6a-4282-94d2-b96e7137e170"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Hedberg"
                    ],
                    "Given": [
                      {
                        "_": "Lina",
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
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "417561"
                ],
                "StartTime": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "18:17:53"
                    ]
                  }
                ],
                "StartId": [
                  "cf51cd64-d0f2-4e9e-a89f-f7beedb46796"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
                      "Hedberg"
                    ],
                    "Given": [
                      {
                        "_": "Eva",
                        "$": {
                          "sequence": "1"
                        }
                      }
                    ]
                  }
                ],
                "PersonId": [
                  {
                    "_": "590",
                    "$": {
                      "type": "nat",
                      "idManager": "Eventor"
                    }
                  }
                ],
                "BirthDate": [
                  {
                    "Date": [
                      "1967-05-31"
                    ]
                  }
                ]
              }
            ],
            "Organisation": [
              {
                "OrganisationId": [
                  "319"
                ],
                "Name": [
                  {
                    "_": "Segersta OK",
                    "$": {
                      "languageId": "sv"
                    }
                  }
                ],
                "ShortName": [
                  {
                    "_": "Segersta OK",
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
                "CCardId": [
                  "417560"
                ],
                "StartId": [
                  "2b052231-63d9-4260-8ead-cd58828727d3"
                ],
                "ModifyDate": [
                  {
                    "Date": [
                      "2016-07-12"
                    ],
                    "Clock": [
                      "21:30:20"
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
