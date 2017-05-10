unit StringUtils;


interface
uses classes;


procedure Split(const Delimiter: Char;
    Input: string;
    const Strings: TStrings) ;


function SplitA(const Delimiter: Char;input:string ):TStringList;

    

implementation

procedure Split(const Delimiter: Char;
    Input: string;
    const Strings: TStrings) ;
begin
   Assert(Assigned(Strings)) ;
   Strings.Clear;
   Strings.Delimiter := Delimiter;
   Strings.DelimitedText := Input;
end;
function SplitA(const Delimiter: Char;input:string ):TStringList;
var output:TStringList;
begin
  //
   result:=output;
end;




end.
