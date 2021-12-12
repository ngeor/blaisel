unit Tool;

interface

function SelectTool(a: Integer; b: Integer): Integer;

implementation

uses Calc;

function SelectTool(a: Integer; b: Integer): Integer;
begin
  SelectTool := Add(a, b);
end;

end.
