pageextension 50103 CustomerListExt extends "Customer List"
{
    layout
    {
        addafter(Name)
        {
            field(Rank; Rank)
            {
                Caption = 'Rank';
                ApplicationArea = All;
                StyleExpr = StyleExprTxt;
            }
        }
    }

    trigger OnAfterGetRecord()
    var
    begin
        StyleExprTxt := ChangeColor.ChangeCustomerRankColor(Rec);
    end;


    var
        StyleExprTxt: Text[50];
        ChangeColor: Codeunit ChangeColor;

}