report 50101 "Shows By Type"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = ExcelLayout;

    dataset
    {
        dataitem(RadioShowType; "Radio Show Type")
        {
            column(Code_RadioSowType; Code) { }
            column(Type; Description) { }
            dataitem(RadioShow; "Radio Show")
            {
                DataItemLinkReference = RadioShowType;
                // DataItemLink = "Radio Show Type" = field(Code);
                // DataItemTableView = sorting("Radio Show Type");
                PrintOnlyIfDetail = true;

                column(No_RadioShow; "No.") { }
                column(Title; Name) { }
                column(Hours; "Run Time" / 86400000) { }
                dataitem(PlayListHaeader; "Play List Header")
                {
                    DataItemLinkReference = RadioShowType;
                    // DataItemLink = "Radio Show No." = field("No.");
                    // DataItemTableView = sorting("No.");
                    column(PostingDate_PlaylistHeader; "Broadcast Date") { }
                    column(StartTime_PlaylistHeader; "Start Time") { }

                }
            }
        }
    }

    // requestpage
    // {
    //     AboutTitle = 'Teaching tip title';
    //     AboutText = 'Teaching tip content';
    //     layout
    //     {
    //         area(Content)
    //         {
    //             group(GroupName)
    //             {
    //                 field(Name; SourceExpression)
    //                 {

    //                 }
    //             }
    //         }
    //     }

    //     actions
    //     {
    //         area(processing)
    //         {
    //             action(LayoutName)
    //             {

    //             }
    //         }
    //     }
    // }

    rendering
    {
        layout(ExcelLayout)
        {
            Type = Excel;
            LayoutFile = './Layout/ShowsByType.xlsx';
            Summary = 'Show by type Excel';
        }
    }

    labels
    {
        ReportTitle = 'Show Schedule by Type';
        ShowTitle = 'Title';
        ShowTypeTitle = 'Type';
        HourTitle = 'Hours';

    }

    var
        myInt: Integer;
}