page 50116 "Period Difference Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Age Table";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("First Date"; Rec."First Date") { }
                field("Second Date"; Rec."Second Date") { }
                field("Period Difference(M&D)"; Rec."Period Difference") { Editable = false; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Calculate Period Difference")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    Date1: Date;
                    Date2: Date;
                    TempDate: Date;
                    Years: Integer;
                    Months: Integer;
                    Days: Integer;
                    PeriodDifference: Text;
                begin
                    // Get the two dates from the record
                    Date1 := Rec."First Date";
                    Date2 := Rec."Second Date";

                    // Ensure Date1 is earlier than Date2
                    if Date1 > Date2 then begin
                        TempDate := Date1;
                        Date1 := Date2;
                        Date2 := TempDate;
                    end;

                    // Extract Year, Month, and Day values
                    Years := Date2DMY(Date2, 3) - Date2DMY(Date1, 3);
                    Months := Date2DMY(Date2, 2) - Date2DMY(Date1, 2);
                    Days := Date2DMY(Date2, 1) - Date2DMY(Date1, 1);

                    // Adjust negative days
                    if Days < 0 then begin
                        Months := Months - 1;
                        Days := Days + Date2DMY(CALCDATE('-1D', Date2), 1); // Get days in last month
                    end;

                    // Adjust negative months
                    if Months < 0 then begin
                        Years := Years - 1;
                        Months := Months + 12;
                    end;

                    // Convert years into months
                    Months := Months + (Years * 12);

                    // Format the result as "X months, Y days"
                    PeriodDifference := StrSubstNo('%1 months, %2 days', Months, Days);

                    // Update the "Period Difference" field
                    Rec."Period Difference" := PeriodDifference;
                    Rec.Modify();
                end;
            }
        }
    }
}
