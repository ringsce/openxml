unit Unit1;

{$mode DELPHI}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs;

type
  TForm1 = class(TForm)
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

begin
  try
    // Read in xml file from disk
    ReadXMLFile(Doc, 'xml/game.dtd');
    // Retrieve the "password" node
    PassNode := Doc.DocumentElement.FindNode('listview');
    // Write out value of the selected node
    WriteLn(PassNode.NodeValue); // will be blank
    // The text of the node is actually a separate child node
    WriteLn(PassNode.FirstChild.NodeValue); // correctly prints "abc"
    // alternatively
    WriteLn(PassNode.TextContent);
  finally
    // finally, free the document
    Doc.Free;
  end;
end;

end;
end;

end.

