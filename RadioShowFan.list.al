page 50111 "Radio Show Fans"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Radio Show Fan";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; Rec.Name) { }
                field("E-Mail"; Rec."E-mail") { }
                field("Last Contacted"; Rec."Last Contacted") { }
                field("Address"; Rec.Address) { }
                field("City"; Rec.City) { }
                field("Country/Region Code"; Rec."Country/Region Code") { }
                field("County"; Rec.County) { }
                field("Post Code"; Rec."Post Code") { }
            }
        }
        area(Factboxes)
        {

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