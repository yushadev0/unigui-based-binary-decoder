unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniLabel, uniButton,
  uniGUIBaseClasses, uniEdit, uniGauge, uniTimer, uniCheckBox;

type
  TMainForm = class(TUniForm)
    UniEdit1: TUniEdit;
    UniButton1: TUniButton;
    UniLabel1: TUniLabel;
    UniEdit2: TUniEdit;
    UniButton2: TUniButton;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniEdit3: TUniEdit;
    UniGauge1: TUniGauge;
    UniTimer1: TUniTimer;
    UniTimer2: TUniTimer;
    UniLabel4: TUniLabel;
    UniButton3: TUniButton;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniTimer3: TUniTimer;
    UniLabel7: TUniLabel;
    UniCheckBox1: TUniCheckBox;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    procedure UniButton1Click(Sender: TObject);
    procedure TextClear();
    procedure UniButton2Click(Sender: TObject);
    procedure CreateRandomBinaryCode();
    procedure UniFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniTimer1Timer(Sender: TObject);
    procedure UniTimer2Timer(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniLabel5DblClick(Sender: TObject);
    procedure ArrangeTimer();
    procedure UniTimer3Timer(Sender: TObject);
    procedure UniCheckBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pos, failed, sayi, sayi1, points: integer;
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.TextClear;
begin
  UniLabel1.Text := '0';
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
var
  number, i: integer;
  bin, a: string;
begin
  TextClear;
  number := StrToInt(UniEdit1.Text);
  bin := '';
  if (0 <= number) and (number <= 255) then
  begin
    for i := 0 to 7 do
    begin
      bin := IntToStr(number mod 2) + bin;
      number := trunc(number / 2);
    end;
    UniLabel1.Text := bin;
  end
  else
  begin
    ShowMessage('Lütfen 0 ile 255 arasýnda bir sayý giriniz.');
  end;

end;

procedure TMainForm.UniButton2Click(Sender: TObject);
var
  bin, bin0, bin1, bin2, bin3, bin4, bin5, bin6, bin7: string;
  sum: integer;
begin
  if not(Length(UniEdit2.Text) = 8) then
  begin
    ShowMessage('Lütfen 8 bitlik bir binary kodu giriniz.');
  end
  else
  begin
    bin := UniEdit2.Text;
    bin0 := Copy(bin, 8, 1);
    bin1 := Copy(bin, 7, 1);
    bin2 := Copy(bin, 6, 1);
    bin3 := Copy(bin, 5, 1);
    bin4 := Copy(bin, 4, 1);
    bin5 := Copy(bin, 3, 1);
    bin6 := Copy(bin, 2, 1);
    bin7 := Copy(bin, 1, 1);
    sum := 0;
    if bin0 = '1' then
    begin
      sum := sum + 1;
    end;
    if bin1 = '1' then
    begin
      sum := sum + 2;
    end;

    if bin2 = '1' then
    begin
      sum := sum + 4;
    end;

    if bin3 = '1' then
    begin
      sum := sum + 8;
    end;

    if bin4 = '1' then
    begin
      sum := sum + 16;
    end;

    if bin5 = '1' then
    begin
      sum := sum + 32;
    end;

    if bin6 = '1' then
    begin
      sum := sum + 64;
    end;

    if bin7 = '1' then
    begin
      sum := sum + 128;
    end;

    UniLabel2.Text := sum.ToString;
  end;

end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  points := 0;
  UniTimer1.Interval := 1000;
  UniLabel5.Text := points.ToString;
  UniLabel4.Text := '';
  UniGauge1.Value := UniGauge1.Max;
  UniEdit3.Enabled := True;
  UniTimer1.Enabled := True;
  CreateRandomBinaryCode;
  failed := 0;
  UniButton3.Enabled := False;
end;

procedure TMainForm.UniCheckBox1Change(Sender: TObject);
begin
  if UniCheckBox1.Checked then
  begin
    UniLabel8.Visible := True;
    UniLabel9.Visible := True;
    UniLabel10.Visible := True;
    UniLabel11.Visible := True;
    UniLabel12.Visible := True;
    UniLabel13.Visible := True;
    UniLabel14.Visible := True;
    UniLabel15.Visible := True;
  end
  else
  begin
    UniLabel8.Visible := False;
    UniLabel9.Visible := False;
    UniLabel10.Visible := False;
    UniLabel11.Visible := False;
    UniLabel12.Visible := False;
    UniLabel13.Visible := False;
    UniLabel14.Visible := False;
    UniLabel15.Visible := False;

  end;

end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniLabel8.Visible := False;
  UniLabel9.Visible := False;
  UniLabel10.Visible := False;
  UniLabel11.Visible := False;
  UniLabel12.Visible := False;
  UniLabel13.Visible := False;
  UniLabel14.Visible := False;
  UniLabel15.Visible := False;

  points := 0;
  UniLabel5.Text := points.ToString;
  failed := 1;
end;

procedure TMainForm.UniFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if failed = 0 then
    begin
      if UniGauge1.Value > 0 then
      begin
        if UniEdit3.Text = sayi1.ToString then
        begin
          UniGauge1.Value := UniGauge1.Max;
          UniLabel4.Text := 'Doðru';
          points := points + trunc(sayi1 / 1.5);
          UniLabel7.Font.Color := clLime;
          UniLabel7.Caption := '+' + trunc(sayi1 / 1.5).ToString;
          UniLabel5.Text := points.ToString;
          ArrangeTimer;
          UniTimer3.Enabled := True;
          UniTimer2.Enabled := True;
        end
        else
        begin
          UniLabel4.Text := 'Yanlýþ';
          UniTimer2.Enabled := True;
          points := points - trunc(sayi1 / 3);
          UniLabel7.Font.Color := clMaroon;
          UniLabel7.Caption := '-' + trunc(sayi1 / 3).ToString;
          ArrangeTimer;
          UniTimer3.Enabled := True;
          UniLabel5.Text := points.ToString;
        end;
      end;
      CreateRandomBinaryCode;
      UniEdit3.Text := '';
    end
    else
    begin
      ShowMessage('Lütfen Önce oyunu baþlatýn');
    end;

  end;

  if Key = VK_SPACE then
  begin
    if UniButton3.Enabled then
    begin
      UniButton3Click(Self);
    end;
  end;

end;

procedure TMainForm.UniLabel5DblClick(Sender: TObject);
begin
  UniLabel6.Visible := True;
end;

procedure TMainForm.UniTimer1Timer(Sender: TObject);
begin
  UniGauge1.Value := UniGauge1.Value - 1;

  if UniGauge1.Value = 0 then
  begin
    UniLabel4.Text := 'Süre Doldu!';
    UniEdit3.Enabled := False;
    failed := 1;
    UniTimer1.Enabled := False;
    UniButton3.Enabled := True;
  end;
end;

procedure TMainForm.UniTimer2Timer(Sender: TObject);
begin
  UniLabel4.Text := '';
  UniTimer2.Enabled := False;
end;

procedure TMainForm.UniTimer3Timer(Sender: TObject);
begin
  UniLabel7.Text := '';
  UniTimer3.Enabled := False;
end;

procedure TMainForm.CreateRandomBinaryCode;
var
  i: integer;
  bin: string;
begin
  sayi := Random(255);
  sayi1 := sayi;

  for i := 0 to 7 do
  begin
    bin := IntToStr(sayi mod 2) + bin;
    sayi := trunc(sayi / 2);
  end;
  UniLabel6.Text := sayi1.ToString;
  UniLabel3.Text := bin;

end;

procedure TMainForm.ArrangeTimer;
begin

  if points < 300 then
  begin
    UniTimer1.Interval := 1000
  end
  else
    case points of
      300 .. 500:
        UniTimer1.Interval := 750;
      501 .. 750:
        UniTimer1.Interval := 500;
      751 .. 1000:
        UniTimer1.Interval := 300;
      1001 .. 1500:
        UniTimer1.Interval := 150;
    end;
end;

initialization

RegisterAppFormClass(TMainForm);

end.
