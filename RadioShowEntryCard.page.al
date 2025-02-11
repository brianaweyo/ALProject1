page 50105 "Radio Show Entry Card"
{
    PageType = Card;
    UsageCategory = Administration;
    SourceTable = "Radio Show Entry";
    Caption = 'Radio Show Entry';

    layout
    {
        area(Content)
        {

            group(GroupSelector)
            {
                Caption = 'Select Section';
                field(SelectedGroup; SelectedGroup)
                {

                    ApplicationArea = All;
                    Caption = 'Section';
                    ToolTip = 'Select the group of fields to display.';

                    trigger OnValidate()
                    begin
                        UpdateFieldsVisibility();
                    end;
                }
                field("Radio Show No."; Rec."Radio Show No.")
                {
                    ApplicationArea = All;
                    Editable = false; // Make it read-only if needed
                    Importance = Promoted; // Ensure it stands out
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




    var
        // SelectedGroup: Option " ","General Information","Timing Information","Financial Information";
        SelectedGroup: Enum RadioShowSection;
        ShowGeneralInfo: Boolean;
        ShowTimingInfo: Boolean;
        ShowFinancialInfo: Boolean;

    trigger OnOpenPage()
    begin
        // Initialize the group selection
        SelectedGroup := SelectedGroup::None;
        UpdateFieldsVisibility();
    end;

    local procedure UpdateFieldsVisibility()
    begin
        ShowGeneralInfo := (SelectedGroup = SelectedGroup::GeneralInfo);
        ShowTimingInfo := (SelectedGroup = SelectedGroup::TimingInfo);
        ShowFinancialInfo := (SelectedGroup = SelectedGroup::FinancialInfo);
    end;

}