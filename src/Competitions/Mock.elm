module Competitions.Mock exposing (competitions)

import Json.Decode exposing (string, int, list, at, map, Decoder, decodeString)
import Competitions.Models exposing (Competition)
import Eventor.Decode exposing (competition)


competitions : List Competition
competitions =
    let
        name =
            decodedName
    in
        case name of
            Ok value ->
                value

            Err msg ->
                (Debug.log msg [])


decodedName : Result String (List Competition)
decodedName =
    decodeString
        (at ["EventList", "Event"] (list competition))
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
