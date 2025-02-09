page 50112 "Playlist Factbox"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Play list Header";

    layout
    {
        area(Content)
        {
            field("PSAs Required"; Rec."PSAs Required") { }
            field("PSA Count"; Rec."PSA Count") { }
            field("Ads Required"; Rec."Ads Required") { }
            field("News Required"; Rec."News Required") { }
            field("NewsCount"; Rec.GetNewsWeatherSportsCount(1)) { }
            field("Weather Required"; Rec."Weather Required") { }
            field("WeatherCount"; Rec.GetNewsWeatherSportsCount(2)) { }
            field("Sports Required"; Rec."Sports Required") { }
            field("Sports"; Rec.GetNewsWeatherSportsCount(3)) { }

        }
    }


}