unit UntCodeGen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, xmldom, XMLIntf, msxmldom, XMLDoc,
  ImgList, ExtCtrls, ADODB, DB, ActnList, Menus, OleCtrls, SHDocVw,
  ValEdit, Buttons, ComCtrls, DBGrids, Grids, TFlatButtonUnit, ADOConEd;
type
  TfrmCodeGen=class(TForm)
    qry1: TADOQuery;
    Panel1: TPanel;
    SaveDialog1: TSaveDialog;
    ADOTable1: TADOTable;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    ADOQ_excute: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource1: TDataSource;
    Splitter2: TSplitter;
    TabSheet4: TTabSheet;
    GroupBox2: TGroupBox;
    ADOQuery2: TADOQuery;
    SaveDialog2: TSaveDialog;
    ADOTable2: TADOTable;
    ADOQ_SysInfo: TADOQuery;
    Splitter3: TSplitter;
    ADOQ_daoru: TADOQuery;
    SaveDialog3: TSaveDialog;
    PopupMenu2: TPopupMenu;
    DelphiDBGrid1: TMenuItem;
    Panel8: TPanel;
    Fieldbyname1: TMenuItem;
    TabSheet5: TTabSheet;
    SaveDialog4: TSaveDialog;
    ActionList1: TActionList;
    Action1: TAction;
    StatusBar1: TStatusBar;
    ADOQuery4: TADOQuery;
    ADOTable3: TADOTable;
    ADOTable3YHID: TWideStringField;
    ADOTable3YHMC: TWideStringField;
    ADOTable3YHMM: TWideStringField;
    ADOTable3YHQX: TWideStringField;
    Panel10: TPanel;
    ADOConnection1: TADOConnection;
    Label15: TLabel;
    ADOStoredProc1: TADOStoredProc;
    Panel6: TPanel;
    Timer1: TTimer;
    Action2: TAction;
    ProgressBar4: TProgressBar;
    Memo3_PopupMenu: TPopupMenu;
    N1: TMenuItem;
    PageControl2: TPageControl;
    TabSheet_biao: TTabSheet;
    TabSheet_sht: TTabSheet;
    TabSheet_gch: TTabSheet;
    lbTable: TListBox;
    ListBox2: TListBox;
    ListBox4: TListBox;
    N2: TMenuItem;
    N3: TMenuItem;
    PageContr_delphi: TPageControl;
    TabSh_d_1: TTabSheet;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Memo2: TMemo;
    Memo1: TMemo;
    Panel3: TPanel;
    Label6: TLabel;
    ComboBox2: TComboBox;
    TabSh_D_2: TTabSheet;
    Panel9: TPanel;
    PageContr_java: TPageControl;
    TabSheet_J_jsp: TTabSheet;
    TabSheet_j_valueOBJ: TTabSheet;
    Panel13: TPanel;
    Panel14: TPanel;
    TabSheet_J_DatabaseCon: TTabSheet;
    Panel15: TPanel;
    Panel16: TPanel;
    Label8: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox5: TGroupBox;
    RadioButton4: TRadioButton;
    GroupBox6: TGroupBox;
    Edit2: TEdit;
    Label9: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    Label10: TLabel;
    Splitter4: TSplitter;
    Panel18: TPanel;
    GroupBox9: TGroupBox;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    TabSheet_baseLogic: TTabSheet;
    Panel19: TPanel;
    GroupBox11: TGroupBox;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    Panel20: TPanel;
    Splitter5: TSplitter;
    Edit_VOname: TEdit;
    ValueListEditor2: TValueListEditor;
    label11: TLabel;
    RadioButton_maintable: TRadioButton;
    RadioButton_detailTable: TRadioButton;
    RadioButton_selfdefin: TRadioButton;
    ComboBox_javatype: TComboBox;
    Panel21: TPanel;
    Edit_classname: TEdit;
    Label12: TLabel;
    Panel17: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    PageControl3: TPageControl;
    TabSheet_JSPSetup: TTabSheet;
    TabSheet_reference: TTabSheet;
    GroupBox12: TGroupBox;
    ComboBox5: TComboBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    ComboBox4: TComboBox;
    ValueListEditor1: TValueListEditor;
    GroupBox14: TGroupBox;
    Image_second: TImage;
    ComboBox_FrameStyle: TComboBox;
    GroupBox15: TGroupBox;
    ValueListEditor4: TValueListEditor;
    GroupBox16: TGroupBox;
    ComboBox_JSTL: TComboBox;
    Memo10: TMemo;
    ImageList1: TImageList;
    Image_first: TImage;
    TabSheet9: TTabSheet;
    Panel25: TPanel;
    GroupBox10: TGroupBox;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    CheckBox_ifClear: TCheckBox;
    GroupBox17: TGroupBox;
    LabeledEdit_filename: TLabeledEdit;
    Memo_errorcontent: TMemo;
    LabeledEdit_houzhui: TLabeledEdit;
    SaveDialog_html: TSaveDialog;
    TabSheet_PropertiesChange: TTabSheet;
    Panel26: TPanel;
    GroupBox18: TGroupBox;
    Memo_zy_after: TMemo;
    GroupBox19: TGroupBox;
    Memo_zy_before: TMemo;
    Splitter6: TSplitter;
    OpenDialog_zy: TOpenDialog;
    Edit_filename: TEdit;
    Edit_find: TEdit;
    TabSheet_html: TTabSheet;
    WebBrowser1: TWebBrowser;
    TabSheet_javaCode: TTabSheet;
    Panel27: TPanel;
    PageControl4: TPageControl;
    TabSheet_javaCode_Simple: TTabSheet;
    GroupBox20: TGroupBox;
    Edit_exceptionName: TEdit;
    Label3: TLabel;
    GroupBox21: TGroupBox;
    Panel5: TPanel;
    Panel7: TPanel;
    Label7: TLabel;
    SpeedButton_filer: TSpeedButton;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    Edit_filerstr: TEdit;
    ComboBox3: TComboBox;
    Edit_filervalue: TEdit;
    CheckBox4: TCheckBox;
    GroupBox1: TGroupBox;
    Splitter7: TSplitter;
    Panel_anniu: TPanel;
    Label1: TLabel;
    Panel11: TPanel;
    Memo6: TMemo;
    Panel29: TPanel;
    CheckBox_ControlColumn: TCheckBox;
    Panel30: TPanel;
    Edit_Per: TEdit;
    Label13: TLabel;
    XMLDocument_xml: TXMLDocument;
    N4: TMenuItem;
    GroupBox25: TGroupBox;
    Label18: TLabel;
    GroupBox26: TGroupBox;
    Label4: TLabel;
    Edit_Collection: TEdit;
    PageControl7: TPageControl;
    TabSheet_ColDes: TTabSheet;
    TabSheet_FILLDes: TTabSheet;
    Panel24: TPanel;
    Memo8: TMemo;
    GroupBox13: TGroupBox;
    Memo9: TMemo;
    Panel4: TPanel;
    StringGrid1: TStringGrid;
    ProgressBar1: TProgressBar;
    Panel32: TPanel;
    CheckBox_AllowDelete: TCheckBox;
    Memo_var: TMemo;
    Panel33: TPanel;
    SpeedButton_mainpage: TSpeedButton;
    SpeedButton_back: TSpeedButton;
    SpeedButton_foword: TSpeedButton;
    TabSheet7: TTabSheet;
    Panel12: TPanel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    ProgressBar3: TProgressBar;
    ProgressBar2: TProgressBar;
    Edit3: TEdit;
    Label21: TLabel;
    Button1: TButton;

    procedure Button1Click(Sender : TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure ShowTable;
    { Private declarations }
  public
    { Public declarations }
  end ;

const


  // 获得所有数据表名
  cnSql_AllTable = 'select [name] as TabName,type as TabType, Info as ColumnNums from sysobjects '
    + ' where type = ''U'' and [Name]<> ''dtproperties'' order by [Name] ';  

var
  frmCodeGen: TfrmCodeGen;
  lstTableName: TStrings;

{This file is generated by DeDe Ver 3.50.02 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TfrmCodeGen.ShowTable;
begin

  lstTableName.Clear;
  lbTable.Clear;
   with qry1 do
   begin
     close;
     SQL.Clear;
     SQL.Add(cnSql_AllTable);
     Open;
     while not Eof do
     begin
       lstTableName.Add( FieldByName('TabName').AsString );
       Next;
     end;
   end;
   lbTable.Items.Assign(lstTableName);
end;


procedure TfrmCodeGen.Button1Click(Sender : TObject);
begin
  EditConnectionString(ADOConnection1);

  ShowTable;

//  ADOConnection1.ConnectionString := PromptDataSource(Handle, ADOConnection1.ConnectionString);

end;

procedure TfrmCodeGen.FormCreate(Sender: TObject);
begin
  lstTableName := TStrings.Create;
end;

end.
