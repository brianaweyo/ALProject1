page 50100 "Radio Show List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Radio Show";
    CardPageId = "Radio Show Card"; // connects Radio Show List records to the Radio Show Card
    // Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.") { }
                field("Radio Show Type"; Rec."Radio Show Type") { }
                field("Name"; Rec."Name") { }
                field("Run Time"; Rec."Run Time") { }
                field("Host Code"; Rec."Host Code") { }
                field("Host Name"; Rec."Host Name") { }
                field("Average Listeners"; Rec."Average Listeners") { }
                field("Audience Share"; Rec."Audience Share") { }
                field("Advertising Revenue"; Rec."Advertising Revenue") { }
                field("Royalty Cost"; Rec."Royalty Cost") { }

            }
        }
        area(Factboxes)
        {
            part(Fans; "Radio Show Fan Factbox")
            {
                SubPageLink = "Radio Show No." = field("No.");
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
}