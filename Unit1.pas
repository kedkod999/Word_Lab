unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VBIDE_TLB, Word_TLB, Office_TLB,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    Button1: TButton;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Edit1: TEdit;
    MaskEdit3: TMaskEdit;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label3: TLabel;
    Label15: TLabel;
    SpinEdit1: TSpinEdit;
    Label16: TLabel;
    SpinEdit2: TSpinEdit;
    Label17: TLabel;
    Edit2: TEdit;
    Label18: TLabel;
    MaskEdit4: TMaskEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Label19: TLabel;
    Edit13: TEdit;
    Label23: TLabel;
    Edit14: TEdit;
    Label24: TLabel;
    Edit15: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
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
    Selection.TypeText('���  ' + MaskEdit1.Text + #9 + #9 + #9 + #9 + #9);
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
    Selection.TypeText('��� ���������� ������ ' + MaskEdit2.Text);

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
    if RadioButton1.Checked then
      Selection.TypeText('������������ ������������������� ������������.');
    if RadioButton2.Checked then
      Selection.TypeText('��������� �� ���� ������ ���������������.');
    if RadioButton3.Checked then
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
    if RadioButton4.Checked then
      Selection.TypeText(Edit1.Text);
    Selection.TypeParagraph;
    Selection.TypeText('�������������� ���������������:');
    Selection.TypeParagraph;
    Selection.TypeText(Edit7.Text);
    Selection.TypeParagraph;
    Selection.TypeText(Edit8.Text);
    if Edit9.Text <> '' then
    begin
      Selection.TypeParagraph;
      Selection.TypeText(Edit9.Text);
    end;
    Selection.TypeParagraph;
    Selection.TypeText('������ ');
    Selection.TypeText(MaskEdit2.Text);
    Selection.TypeParagraph;
    Selection.TypeParagraph;
    Selection.TypeText
      ('���� ����������� ���������� ������� ��������������� � ���� ������� ������');
    Selection.TypeParagraph;
    Selection.TypeText
      ('�� ��������� ����� ��� ��������� ����� ������������                                                                '
      + DateToStr(DateTimePicker1.Date));

    Selection.TypeParagraph;
    Selection.TypeParagraph;
    Selection.TypeText('���������� � ��������� ���������� �� ' +
      IntToStr(SpinEdit1.Value) + ' ��������� ');
    Selection.TypeText('� ����������� ����� ��������� �� ' +
      IntToStr(SpinEdit1.Value) + ' ���������');

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
    Selection.TypeText(Edit4.Text);
    Selection.TypeParagraph;
    Selection.TypeText(Edit5.Text);
    if Edit6.Text <> '' then
    begin
      Selection.TypeParagraph;
      Selection.TypeText(Edit6.Text);
    end;
    Selection.TypeParagraph;
    Selection.TypeText('��� ������������� ' + MaskEdit4.Text);
    Selection.TypeParagraph;
    Selection.TypeText('����� ����������� ��������:');
    Selection.TypeParagraph;
    Selection.TypeText(Edit2.Text);
    Selection.TypeParagraph;
    Selection.TypeText('_________________________               ' +
      DateToStr(DateTimePicker1.Date));
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
    Selection.TypeText(Edit3.Text);

    Selection.MoveRight(EmptyParam, EmptyParam, EmptyParam);
    Selection.ParagraphFormat.Alignment := wdAlignParagraphCenter;
    Selection.Font.Bold := wdToggle;
    Selection.TypeText('����������� ���������� ���������� ������');
    Selection.Font.Bold := wdToggle;
    Selection.TypeParagraph;
    Selection.TypeText('�������� � ������������� ���������');
    Selection.TypeParagraph;
    Selection.ParagraphFormat.Alignment := wdAlignParagraphLeft;
    Selection.TypeText('������ ��������� ������������ (���) '+Edit14.Text);
    Selection.TypeParagraph;
    Selection.TypeText('� ����������� �� '+inttostr(SpinEdit1.Value)+' ���������');
    Selection.TypeParagraph;
    Selection.TypeText('� ����������� �� ����� ��������� �� '+inttostr(SpinEdit2.Value)+' ������');
    Selection.TypeParagraph;
    Selection.TypeText('���� ������������� ���������  '+DateToStr(DateTimePicker1.Date));
    Selection.TypeParagraph;
    Selection.TypeText('���������������� �� � '+Edit15.Text);
    Selection.TypeParagraph;
    Selection.TypeParagraph;
    if (Edit10.Text <> '') and (Edit11.Text <> '') and (Edit12.Text <> '') then
    begin
      Selection.TypeText(Edit10.Text + ', ' + Edit11.Text[1] + '.' + Edit12.Text
        [1] + '.' + '                                _______________');
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
    if (Edit10.Text <> '') and (Edit11.Text <> '') and (Edit12.Text <> '') then
    begin
    Selection.TypeText
      (edit13.text+'                        '+Edit10.Text + ', ' + Edit11.Text[1] + '.' + Edit12.Text[1] + '.' +'                                                                        _____________________');
    end;
    Selection.TypeParagraph;
    Selection.ParagraphFormat.Alignment := wdAlignParagraphRight;
    Selection.Font.Size := 6;
    Selection.TypeText
      ('�������            ');
    Selection.TypeParagraph;
    Selection.Font.Size := 10;
    Selection.TypeText(DateToStr(DateTimePicker1.Date));
  end;
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
