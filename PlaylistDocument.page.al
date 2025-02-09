page 50104 "Playlist Document"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Play List Header";

    layout
    {
        area(Content)
        {
            group(Playlist)
            {
                field("No."; Rec."No.") { }
                field("Radio Show No."; Rec."Radio Show No.")
                {
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Description"; Rec.Description) { }
                field("Broadcast Date"; Rec."Broadcast Date") { }
                field(Duration; Rec.Duration) { }
                field("Start Time"; Rec."Start Time") { }
                field("PSA Count"; Rec."PSA Count") { }
                field("PSAs Required"; Rec."PSAs Required") { }
                field("Ads Count"; Rec."Ads Count") { }
                field("Ads Required"; Rec."Ads Required") { }
                field("News Required"; Rec."News Required") { }
                field("News Duration"; Rec."News Duration") { }
                field("Sports Required"; Rec."Sports Required") { }
                field("Sports Duration"; Rec."Sports Duration") { }
                field("Weather Required"; Rec."Weather Required") { }
                field("Weather Duration"; Rec."Weather Duration") { }



                // field("Document No."; Rec."Document No.") { }
                // field("Line No."; Rec."Line No.") { }
                // field(Type; Rec.Type) { }
                // field("No."; Rec."No.") { }
                // field("Data Format"; Rec."Data Format") { }
                // field("Publisher Code"; Rec."Publisher Code") { }
                // field("Description"; Rec."Description") { }
                // field("Start Time"; Rec."Start Time") { }
                // field("End Time"; Rec."End Time") { }
            }


            //Linking document page to Playlist Subpage
            part(Lines; "Playlist Subpage")
            {
                SubPageLink = "Document No." = field("No.");
                SubPageView = sorting("Document No.", "Line No.");
            }
        }
        //Adding a FactBox
        area(FactBoxes)
        {
            part(Factbox; "Playlist Factbox")
            {
                SubPageLink = "No." = field("No.");
            }
        }


    }


}