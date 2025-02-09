page 50110 "Radio Show Fan Factbox"
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = "Radio Show Fan";

    layout
    {

        area(Content)
        {
            repeater(Group)
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
    }
}