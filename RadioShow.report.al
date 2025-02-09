report 50100 "Radio Show Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Layout/radioshow.rdl';

    Dataset
    {
        dataitem("Radio Show"; "Radio Show")
        {
            RequestFilterFields = "Radio Show Type", "Host Code"; // Enables filtering

            column(No; "No.") { }
            column(RadioShowType; "Radio Show Type") { }
            column(Name; Name) { }
            column(RunTime; "Run Time") { }
            column(HostCode; "Host Code") { }
            column(HostName; "Host Name") { }
            column(AverageListeners; "Average Listeners") { }
            column(AudienceShare; "Audience Share") { }
            column(AdvertisingRevenue; "Advertising Revenue") { }
            column(RoyaltyCost; "Royalty Cost") { }
            column(CompanyPic; CompanyInfo.Picture) { }
            // column(CompanyName; CompanyInfo.Name) { }
            column(CustomCompanyName; CustomCompanyLabel) { }
        }
    }
    trigger OnPreReport()
    begin
        CompanyInfo.Get;
        CompanyInfo.CalcFields(Picture);
        CustomCompanyLabel := 'WDT Radio Station';

    end;

    var
        CompanyInfo: Record "Company Information";
        Bank_Report_Title: Label 'Radio Show Report';
        CustomCompanyLabel: Text[50];



}
