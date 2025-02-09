table 50110 "Radio Show Fan"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20]) { }
        field(2; "Radio Show No."; Code[20]) { }
        field(3; "Name"; Text[100]) { }
        field(4; "E-mail"; Text[80]) { }
        field(5; "Last Contacted"; Date) { }
        field(6; "Address"; Text[100]) { }
        field(7; "Address2"; Text[59]) { }
        field(8; "City"; Text[30]) { }
        field(9; "Country/Region Code"; Code[10]) { }
        field(10; "County"; Text[30]) { }
        field(11; "Post Code"; Code[20])
        {
            TableRelation = if ("Country/Region Code" = const('')) "Post Code"
            else if ("Country/Region Code" = filter(<> '')) "Post Code"
            where("Country/Region Code" = field("Country/Region Code"));
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                PostCode: Record "Post Code";
            begin

                PostCode.ValidatePostCode(City, "Post Code", County, "Country/Region Code",
                    (CurrFieldNo <> 0) and GuiAllowed);

            end;
        }
    }

    // keys
    // {
    //     key(Key1; MyField)
    //     {
    //         Clustered = true;
    //     }
    // }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}