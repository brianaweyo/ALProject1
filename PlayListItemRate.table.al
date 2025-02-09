table 50104 "Playlist Item Rate"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Source type"; Option) { OptionMembers = Vendor,Customer; }
        field(2; "Source No."; Code[20]) { }
        field(3; "Item No."; Code[20])
        {
            TableRelation = If ("Source type" = const(Vendor)) Vendor."No."
            else
            if ("Source type" = const(Customer)) Customer."No.";
        }
        field(4; "Start Time"; Time) { }
        field(5; "End Time"; Time) { }
        field(6; "Rate Amount"; Decimal) { }
        field(7; "Publisher Code"; Code[20]) { }


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