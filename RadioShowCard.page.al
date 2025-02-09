page 50101 "Radio Show Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Radio Show";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.") { }
                field("Radio Show Type"; Rec."Radio Show Type") { }
                field("Name"; Rec."Name") { }
                field("Run Time"; Rec."Run Time") { }
                field("Host Code"; Rec."Host Code") { }
                field("Host Name"; Rec."Host Name") { }

            }
            group(Requirements)
            {
                field("PSAs Required"; Rec."PSAs Required") { }
                field("Ads Required"; Rec."Ads Required") { }
                field("News Required"; Rec."News Required") { }
                field("News Duration"; Rec."News Duration") { }
                field("Sports Required"; Rec."Sports Required") { }
                field("Sports Duration"; Rec."Sports Duration") { }
                field("Weather Required"; Rec."Weather Required") { }
                field("Weather Duration"; Rec."Weather Duration") { }

            }
            group(Statistics)
            {
                field("Average Listeners"; Rec."Average Listeners") { }
                field("Audience Share"; Rec."Audience Share") { }
                field("Advertising Revenue"; Rec."Advertising Revenue") { }
                field("Royalty Cost"; Rec."Royalty Cost") { }

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