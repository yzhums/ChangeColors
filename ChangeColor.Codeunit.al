codeunit 50100 ChangeColor
{
    procedure ChangeCustomerRankColor(Cust: Record Customer): Text[50]
    var
        myInt: Integer;
    begin
        with Cust do
            case Rank of
                Rank::Bronze:
                    exit('Unfavorable');
                Rank::Silver:
                    exit('favorable');
                Rank::Gold:
                    exit('ambiguous');
                Rank::Platinum:
                    exit('subordinate');
            end;
    end;
}