table 50106 "Listenership Entry"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer) { }
        field(2; "Entry Source No."; Integer) { }
        field(3; Date; Date) { }
        field(4; "Start Time"; Time) { }
        field(5; "End Time"; Time) { }
        field(6; "Radio Show No."; Code[20]) { }
        field(7; "Listener Count"; Decimal) { }
        field(8; "Audience Share"; Decimal) { }
        field(9; "Age Demographic"; Option)
        {
            OptionMembers = "0-12","13-18","19-34","35-50","51+";
        }


    }

    keys
    {
        key(PK; "Entry No.") { Clustered = true; }
        key(Reporting; "Radio Show No.", Date, "Start Time", "Age Demographic")
        {
            SumIndexFields = "Listener Count", "Audience Share";
        }

    }

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