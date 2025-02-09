tableextension 50100 Item extends Item
{
    fields
    {
        field(50100; "Publisher Code"; code[10]) { TableRelation = Publisher.Code; }
        field(50101; "ASCAP ID"; Integer) { }
        field(50102; Duration; Duration) { }
        field(50103; "Data Format"; Enum "Playlist Data Format") { }
        field(50104; "MP3 Location"; Text[250]) { }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}