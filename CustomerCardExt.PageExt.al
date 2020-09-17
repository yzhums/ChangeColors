pageextension 50104 CustomerCardExt extends "Customer Card"
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

                trigger OnValidate()
                var
                begin
                    StyleExprTxt := ChangeColor.ChangeCustomerRankColor(Rec);
                end;
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