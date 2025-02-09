table 50115 "Age Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer) { }
        field(2; "Name"; Text[50]) { }
        field(3; "Date Of Birth"; Date)
        {
            trigger OnValidate()
            begin
                CalculateAge();
            end;
        }
        field(4; "Age"; Integer)
        {
            Editable = false;
        }

        field(5; "First Date"; Date) { }
        field(6; "Second Date"; Date) { }
        field(7; "Period Difference"; Text[100])
        {
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Entry No.") { Clustered = true; }
    }

    trigger OnInsert()
    begin
        CalculateAge();
    end;

    trigger OnModify()
    begin
        CalculateAge();
    end;

    local procedure CalculateAge()
    var
        Today: Date;
        YearsDiff: Integer;
    begin
        if "Date Of Birth" = 0D then begin
            "Age" := 0;
            exit;
        end;

        Today := Today();
        YearsDiff := Date2DMY(Today, 3) - Date2DMY("Date Of Birth", 3);


        if (Date2DMY(Today, 2) < Date2DMY("Date Of Birth", 2)) or
           ((Date2DMY(Today, 2) = Date2DMY("Date Of Birth", 2)) and (Date2DMY(Today, 1) < Date2DMY("Date Of Birth", 1)))
        then
            YearsDiff := YearsDiff - 1;

        "Age" := YearsDiff; // Assign the calculated age (already an Integer)
    end;
}