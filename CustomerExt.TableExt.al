tableextension 50103 CustomerExt extends Customer
{
    fields
    {
        field(50000; Rank; Enum Rank)
        {
            Caption = 'Rank';
            DataClassification = CustomerContent;
        }
    }
}