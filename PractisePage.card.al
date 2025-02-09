page 50115 "Age Calculation Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Age Table";

    layout
    {
        area(Content)
        {
            group(AgeCalculation)
            {
                field("Entry No."; Rec."Entry No.") { }
                field("Name"; Rec.Name) { }
                field("D.O.B"; Rec."Date Of Birth") { }
                field("Age"; Rec.Age) { }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}