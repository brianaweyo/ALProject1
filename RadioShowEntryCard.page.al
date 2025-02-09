// page 50103 "Radio Show Entry Card"
// {
//     PageType = Card;
//     ApplicationArea = All;
//     UsageCategory = Administration;
//     SourceTable = "Radio Show Entry";

//     layout
//     {
//         area(Content)
//         {
//             field("Radio Show No."; Rec."Radio Show No.") { }
//             group("Entry Details")
//             {
//                 field("Entry No."; Rec."Entry No.") { }
//                 field("Type"; Rec."Type") { }
//                 field("No."; Rec."No.") { }
//             }
//             group("Entry Time Details")
//             {
//                 field("Data Format"; Rec."Data Format") { }
//                 field("Description"; Rec."Description") { }
//                 field("Date"; Rec.Date) { }
//                 field("Time"; Rec.Time) { }
//             }
//             group("Other Information")
//             {
//                 field("Duration"; Rec."Duration") { }
//                 field("Fee Amount"; Rec."Fee Amount") { }
//                 field("ASCAP ID"; Rec."ASCAP ID") { }
//                 field("Publisher Code"; Rec."Publisher Code") { }
//             }
//         }
//     }

//     actions
//     {
//         area(Processing)
//         {
//             action(ActionName)
//             {
//                 trigger OnAction()
//                 begin
//                     // Add action logic if needed
//                 end;
//             }
//         }
//     }

//     // var
//     //     RadioShowNoVar: Code[20];

//     // trigger OnAfterGetRecord()
//     // begin
//     //     RadioShowNoVar := Rec."Radio Show No.";
//     // end;

// }




page 50105 "Radio Show Entry Card"
{
    PageType = Card;
    SourceTable = "Radio Show Entry";
    Caption = 'Radio Show Entry';

    layout
    {
        area(Content)
        {
            // Constant field at the top
            // group(TopSection)
            // {
            //     Caption = 'Radio Show Details';
            //     field("Radio Show No."; Rec."Radio Show No.")
            //     {
            //         ApplicationArea = All;
            //         Editable = false; // Make it read-only if needed
            //         Importance = Promoted; // Ensure it stands out
            //     }
            // }
            group(GroupSelector)
            {
                Caption = 'Select Section';
                field(SelectedGroup; SelectedGroup)
                {

                    ApplicationArea = All;
                    Caption = 'Section';
                    ToolTip = 'Select the group of fields to display.';
                    OptionCaption = 'General Information,Timing Information,Financial Information';

                    trigger OnValidate()
                    begin
                        UpdateFieldsVisibility();
                    end;
                }
            }

            group(GeneralInformation)
            {
                Caption = 'General Information';
                Visible = ShowGeneralInfo;
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Data Format"; Rec."Data Format")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
            }

            group(TimingInformation)
            {
                Caption = 'Timing Information';
                Visible = ShowTimingInfo;
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
                field(Time; Rec.Time)
                {
                    ApplicationArea = All;
                }
                field(Duration; Rec.Duration)
                {
                    ApplicationArea = All;
                }
            }

            group(FinancialInformation)
            {
                Caption = 'Financial Information';
                Visible = ShowFinancialInfo;
                field("Fee Amount"; Rec."Fee Amount")
                {
                    ApplicationArea = All;
                }
                field("ASCAP ID"; Rec."ASCAP ID")
                {
                    ApplicationArea = All;
                }
                field("Publisher Code"; Rec."Publisher Code")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(SwitchGroup)
            {
                ApplicationArea = All;
                Caption = 'Switch Section';
                ToolTip = 'Switch to another section of fields.';
                Image = Change;

                trigger OnAction()
                begin
                    UpdateFieldsVisibility();
                end;
            }
        }
    }

    var
        SelectedGroup: Option "General Information","Timing Information","Financial Information";
        ShowGeneralInfo: Boolean;
        ShowTimingInfo: Boolean;
        ShowFinancialInfo: Boolean;

    trigger OnOpenPage()
    begin
        // Initialize the group selection
        SelectedGroup := SelectedGroup::"General Information";
        UpdateFieldsVisibility();
    end;

    local procedure UpdateFieldsVisibility()
    begin
        // Reset all group visibility
        ShowGeneralInfo := false;
        ShowTimingInfo := false;
        ShowFinancialInfo := false;

        // Set visibility based on selected group
        case SelectedGroup of
            SelectedGroup::"General Information":
                ShowGeneralInfo := true;
            SelectedGroup::"Timing Information":
                ShowTimingInfo := true;
            SelectedGroup::"Financial Information":
                ShowFinancialInfo := true;
        end;
    end;
}