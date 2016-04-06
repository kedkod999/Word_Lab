unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VBIDE_TLB, Word_TLB, Office_TLB,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Samples.Spin;

type
  TInputPredprinim = record
    INN, KodNalOrg, InayaPrich, Famil, Name, Otch, OGRNIP: string;
    Date: TDate;
    Prilozenie, Copy, Prichina: integer;
  end;

  TInputPredstav = record
    INN, Famil, Name, Otch, Tele, Docum: string;
  end;

  TInputRabot = record
    Famil, Name, Otch, Dolzn, Nomer, Kod: string;
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Edit1: TEdit;
    MaskEdit3: TMaskEdit;
    DateTimePicker1: TDateTimePicker;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit2: TEdit;
    MaskEdit4: TMaskEdit;
    GroupBox3: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label19: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  wold: WordApplication;
  Doc: WordDocument;

implementation

{$R *.dfm}

procedure DocForm(InputPredprinim: TInputPredprinim;
  InputPredstav: TInputPredstav; InputRabot: TInputRabot);
var
  WordApp: WordApplication;
  Docs: Documents;
  Doc: WordDocument;
  Pars: Paragraphs;
  Par: Paragraph;
  D: OleVariant;
begin
  WordApp := CoWordApplication.Create;
  WordApp.Visible := True;

  Docs := WordApp.Documents;
  Doc := Docs.Add('Normal', False, EmptyParam, True);
  With WordApp do
  begin
    With Selection.PageSetup do
    begin
      TopMargin := 2 * 10;
      BottomMargin := 2 * 10;
      LeftMargin := 2 * 10;
      RightMargin := 2 * 10;
    End;
    Selection.Font.Name := 'Arial';
    Selection.Font.Size := 9;
    Selection.TypeText('���  ' + InputPredprinim.INN + #9 + #9 + #9 + #9 + #9);
    Selection.Font.Size := 8;
    With Selection.ParagraphFormat do
    begin
      LeftIndent := 0;
      RightIndent := 0;
      SpaceBefore := 0;
      SpaceAfter := 0;
      LineSpacingRule := wdLineSpaceAtLeast;
      LineSpacing := 12;
      Alignment := wdAlignParagraphRight;
      FirstLineIndent := 12;
      OutlineLevel := wdOutlineLevelBodyText;
      CharacterUnitLeftIndent := 0;
      CharacterUnitRightIndent := 0;
      CharacterUnitFirstLineIndent := 0;
      LineUnitBefore := 0;
      LineUnitAfter := 0;
      TextboxTightWrap := wdTightNone;
    End;
    Selection.TypeText('���������� � 4 � ������� � ������');
    Selection.TypeParagraph;
    Selection.TypeText('�� 11 ������� 2012 �. � ���-7-6/941');
    Application.Keyboard(1033);
    Selection.TypeText('@');
    Application.Keyboard(1049);
    Selection.TypeParagraph;
    Selection.ParagraphFormat.Alignment := wdAlignParagraphCenter;
    Selection.Font.Size := 9;
    Selection.TypeText('���. 1');
    Selection.TypeParagraph;
    Selection.TypeParagraph;
    Selection.ParagraphFormat.Alignment := wdAlignParagraphRight;
    Selection.Font.Bold := wdToggle;
    Selection.TypeText('����� � ����-4');
    Selection.TypeParagraph;
    Selection.TypeText('��� �� ��� 1112017');
    Selection.TypeParagraph;
    Selection.TypeParagraph;
    Selection.TypeBackspace;
    Selection.Font.Bold := wdToggle;
    Selection.Font.Size := 8;
    Selection.TypeText('��� ���������� ������ ' + InputPredprinim.KodNalOrg);

    Selection.TypeParagraph;
    Selection.Font.Size := 10;
    Selection.ParagraphFormat.Alignment := wdAlignParagraphCenter;
    Selection.Font.Bold := wdToggle;
    Selection.TypeText('���������');
    Selection.TypeParagraph;
    Selection.TypeText
      ('� ������ � ����� ��������������� ��������������� � ��������');
    Selection.TypeParagraph;
    Selection.TypeText
      ('����������������� ������� ������ �� ��������� ����� ���');
    Selection.TypeParagraph;
    Selection.TypeText('��������� ����� ������������');

    Selection.TypeParagraph;
    Selection.TypeParagraph;
    Selection.ParagraphFormat.Alignment := wdAlignParagraphJustify;
    Selection.Font.Bold := wdToggle;
    Selection.TypeText('����� � ������������ � ������� 3 ������ 346');
    Selection.Font.Superscript := wdToggle;
    Selection.TypeText('28');
    Selection.Font.Superscript := wdToggle;
    Selection.TypeText
      (' ���������� ������� ���������� ��������� ����� � ����� �����');
    Selection.TypeText('���������� ��������������� � ����� � ');
    if InputPredprinim.Prichina = 1 then
      Selection.TypeText('������������ ������������������� ������������.');
    if InputPredprinim.Prichina = 2 then
      Selection.TypeText('��������� �� ���� ������ ���������������.');
    if InputPredprinim.Prichina = 3 then
    begin
      Selection.TypeText
        ('���������� ����������, ������������� ���������� 1 ������ 2 ');
      Selection.Font.Superscript := wdToggle;
      Selection.TypeText('2');
      Selection.Font.Superscript := wdToggle;
      Selection.TypeText('������ 346 ');
      Selection.Font.Superscript := wdToggle;
      Selection.TypeText('26');
      Selection.Font.Superscript := wdToggle;
      Selection.TypeText('���������� ������� ���������� ���������');
    end;
    if InputPredprinim.Prichina = 4 then
      Selection.TypeText(InputPredprinim.InayaPrich);
    Selection.TypeParagraph;
    Selection.TypeText('�������������� ���������������:');
    Selection.TypeParagraph;
    Selection.TypeText(InputPredprinim.Famil);
    Selection.TypeParagraph;
    Selection.TypeText(InputPredprinim.Name);
    if InputPredprinim.Otch <> '' then
    begin
      Selection.TypeParagraph;
      Selection.TypeText(InputPredprinim.Otch);
    end;
    Selection.TypeParagraph;
    Selection.TypeText('������ ');
    Selection.TypeText(InputPredprinim.OGRNIP);
    Selection.TypeParagraph;
    Selection.TypeParagraph;
    Selection.TypeText
      ('���� ����������� ���������� ������� ��������������� � ���� ������� ������');
    Selection.TypeParagraph;
    Selection.TypeText
      ('�� ��������� ����� ��� ��������� ����� ������������                                                                '
      + DateToStr(InputPredprinim.Date));

    Selection.TypeParagraph;
    Selection.TypeParagraph;
    Selection.TypeText('���������� � ��������� ���������� �� ' +
      IntToStr(InputPredprinim.Prilozenie) + ' ��������� ');
    Selection.TypeText('� ����������� ����� ��������� �� ' +
      IntToStr(InputPredprinim.Copy) + ' ���������');

    Selection.TypeParagraph;
    ActiveDocument.Tables.Add(Selection.Range, 1, 2, wdWord9TableBehavior,
      wdAutoFitFixed);

    Selection.ParagraphFormat.Alignment := wdAlignParagraphCenter;
    Selection.Font.Bold := wdToggle;
    Selection.TypeText('������������� � ������� ��������, ���������');
    Selection.TypeParagraph;
    Application.WindowState := wdWindowStateMinimize;
    Application.WindowState := wdWindowStateNormal;
    Selection.TypeText('� ��������� ���������, �����������:');
    Selection.TypeParagraph;
    Selection.ParagraphFormat.Alignment := wdAlignParagraphLeft;
    Selection.Font.Bold := wdToggle;
    Selection.TypeText('�������������');
    Selection.TypeParagraph;
    Selection.TypeText(InputPredstav.Famil);
    Selection.TypeParagraph;
    Selection.TypeText(InputPredstav.Name);
    if InputPredstav.Otch <> '' then
    begin
      Selection.TypeParagraph;
      Selection.TypeText(InputPredstav.Otch);
    end;
    Selection.TypeParagraph;
    Selection.TypeText('��� ������������� ' + InputPredstav.INN);
    Selection.TypeParagraph;
    Selection.TypeText('����� ����������� ��������:');
    Selection.TypeParagraph;
    Selection.TypeText(InputPredstav.Tele);
    Selection.TypeParagraph;
    Selection.TypeText('_________________________               ' +
      DateToStr(InputPredprinim.Date));
    Selection.TypeParagraph;
    With Selection.ParagraphFormat do
    begin
      LeftIndent := 0;
      RightIndent := 0;
      SpaceBefore := 0;
      SpaceAfter := 0;
      LineSpacingRule := wdLineSpaceAtLeast;
      LineSpacing := 12;
      Alignment := wdAlignParagraphJustify;
      FirstLineIndent := 1.25 * 10;
      OutlineLevel := wdOutlineLevelBodyText;
      CharacterUnitLeftIndent := 0;
      CharacterUnitRightIndent := 0;
      CharacterUnitFirstLineIndent := 0;
      LineUnitBefore := 0;
      LineUnitAfter := 0;
      TextboxTightWrap := wdTightNone;
    End;
    Selection.Font.Size := 6;
    Selection.TypeText('                      (�������)');
    Selection.TypeParagraph;
    Selection.ParagraphFormat.Alignment := wdAlignParagraphCenter;
    Selection.Font.Size := 8;
    Selection.TypeText('������������ ���������,');
    Selection.TypeParagraph;
    Selection.TypeText('��������������� ���������� �������������');
    Selection.TypeParagraph;
    Selection.ParagraphFormat.Alignment := wdAlignParagraphJustify;
    Selection.Font.Size := 10;
    Selection.TypeText(InputPredstav.Docum);

    Selection.MoveRight(EmptyParam, EmptyParam, EmptyParam);
    Selection.ParagraphFormat.Alignment := wdAlignParagraphCenter;
    Selection.Font.Bold := wdToggle;
    Selection.TypeText('����������� ���������� ���������� ������');
    Selection.Font.Bold := wdToggle;
    Selection.TypeParagraph;
    Selection.TypeText('�������� � ������������� ���������');
    Selection.TypeParagraph;
    Selection.ParagraphFormat.Alignment := wdAlignParagraphLeft;
    Selection.TypeText('������ ��������� ������������ (���) ' + InputRabot.Kod);
    Selection.TypeParagraph;
    Selection.TypeText('� ����������� �� ' +
      IntToStr(InputPredprinim.Prilozenie) + ' ���������');
    Selection.TypeParagraph;
    Selection.TypeText('� ����������� �� ����� ��������� �� ' +
      IntToStr(InputPredprinim.Copy) + ' ������');
    Selection.TypeParagraph;
    Selection.TypeText('���� ������������� ���������  ' +
      DateToStr(InputPredprinim.Date));
    Selection.TypeParagraph;
    Selection.TypeText('���������������� �� � ' + InputRabot.Nomer);
    Selection.TypeParagraph;
    Selection.TypeParagraph;
    if (InputRabot.Famil <> '') and (InputRabot.Name <> '') and
      (InputRabot.Otch <> '') then
    begin
      Selection.TypeText(InputRabot.Famil + ', ' + InputRabot.Name[1] + '.' +
        InputRabot.Otch[1] + '.' +
        '                                _______________');
    end;
    Selection.TypeParagraph;
    Selection.Font.Size := 6;
    Selection.TypeText
      ('                                                                                                      (�������)');
    Selection.MoveDown(EmptyParam, EmptyParam, EmptyParam);
    Selection.ParagraphFormat.Alignment := wdAlignParagraphCenter;
    Selection.Font.Bold := wdToggle;
    Selection.TypeText('�������� ������ � �����');
    Selection.Font.Bold := wdToggle;
    Selection.TypeParagraph;
    Selection.ParagraphFormat.Alignment := wdAlignParagraphLeft;
    Selection.TypeText
      ('������ � ����� � ��������� ������ ��������������� ��������������� � �������� ����������������� ������� ������ �� ��������� ����� ��� ��������� ����� ������������ ����������:');
    Selection.TypeParagraph;
    Selection.TypeParagraph;
    if (InputRabot.Famil <> '') and (InputRabot.Name <> '') and
      (InputRabot.Otch <> '') then
    begin
      Selection.TypeText(InputRabot.Dolzn + '                        ' +
        InputRabot.Famil + ', ' + InputRabot.Name[1] + '.' + InputRabot.Otch[1]
        + '.' + '                                                                        _____________________');
    end;
    Selection.TypeParagraph;
    Selection.ParagraphFormat.Alignment := wdAlignParagraphRight;
    Selection.Font.Size := 6;
    Selection.TypeText('�������            ');
    Selection.TypeParagraph;
    Selection.Font.Size := 10;
    Selection.TypeText(DateToStr(InputPredprinim.Date));
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  InputPredprinim: TInputPredprinim;
  InputPredstav: TInputPredstav;
  InputRabot: TInputRabot;
begin
  InputPredprinim.INN := MaskEdit1.Text;
  InputPredprinim.KodNalOrg := MaskEdit2.Text;
  InputPredprinim.InayaPrich := (Edit1.Text);
  InputPredprinim.Famil := Edit7.Text;
  InputPredprinim.Name := Edit8.Text;
  InputPredprinim.Otch := Edit9.Text;
  InputPredprinim.OGRNIP := MaskEdit3.Text;
  InputPredprinim.Date := DateTimePicker1.Date;
  InputPredprinim.Prilozenie := SpinEdit1.Value;
  InputPredprinim.Copy := SpinEdit2.Value;
  if RadioButton1.Checked then
    InputPredprinim.Prichina := 1;
  if RadioButton1.Checked then
    InputPredprinim.Prichina := 2;
  if RadioButton1.Checked then
    InputPredprinim.Prichina := 3;
  if RadioButton1.Checked then
    InputPredprinim.Prichina := 4;

  InputPredstav.INN := MaskEdit4.Text;
  InputPredstav.Famil := Edit4.Text;
  InputPredstav.Name := Edit5.Text;
  InputPredstav.Otch := Edit6.Text;
  InputPredstav.Tele := Edit2.Text;
  InputPredstav.Docum := Edit3.Text;

  InputRabot.Famil := Edit10.Text;
  InputRabot.Name := Edit11.Text;
  InputRabot.Otch := Edit12.Text;
  InputRabot.Dolzn := Edit13.Text;
  InputRabot.Nomer := Edit15.Text;
  InputRabot.Kod := Edit14.Text;
  DocForm(InputPredprinim,InputPredstav,InputRabot);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  RadioButton3.Caption := '��������� ����������, ������������� ���������� 1 ' +
    #13 + '������ 2 ������ 346 ���������� ������� ���������� ���������';
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  Edit1.Enabled := RadioButton4.Checked;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  Edit1.Enabled := RadioButton4.Checked;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
  Edit1.Enabled := RadioButton4.Checked;
end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
  Edit1.Enabled := RadioButton4.Checked;
end;

end.
