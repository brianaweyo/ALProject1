table 50101 "Radio Show Type"
{
    LookupPageId = "Radio Show Types";
    DrillDownPageId = "Radio Show Types";

    fields
    {
        field(1; Code; Code[20]) { }
        field(2; Description; Text[100]) { }

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