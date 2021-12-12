unit Common;

interface

function Add(a: Integer): Integer; cdecl; export;

implementation

function Add(a: Integer): Integer; cdecl; export;
begin
    Add := a + 1;
end;

end.
