program AviationTrackers_p;

uses
  Forms,
  MainForm_u in 'MainForm_u.pas' { frmMainForm },
  ImportExport_dm in 'ImportExport_dm.pas' { dmImportExport: TDataModule },
  StatusCheck_u in 'StatusCheck_u.pas' { frmStatusCheck },
  CurrencyConvertor_u in 'CurrencyConvertor_u.pas' { frmCurrencyConvertor },
  clsConvertor_u in 'clsConvertor_u.pas',
  TradeValues_u in 'TradeValues_u.pas' { frmTradeValues },
  clsCheckstatus_u in 'clsCheckstatus_u.pas',
  clsTradeValues_u in 'clsTradeValues_u.pas',
  AdminLogin_u in 'AdminLogin_u.pas' {frmAdminLogin},
  AdminInterface_u in 'AdminInterface_u.pas' {frmAdminInterface},
  clsNewCommodity_u in 'clsNewCommodity_u.pas',
  Feedback_u in 'Feedback_u.pas' {frmFeedback},
  HelpVideo_u in 'HelpVideo_u.pas' {frmVideo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainForm, frmMainForm);
  Application.CreateForm(TdmImportExport, dmImportExport);
  Application.CreateForm(TfrmStatusCheck, frmStatusCheck);
  Application.CreateForm(TfrmCurrencyConvertor, frmCurrencyConvertor);
  Application.CreateForm(TfrmTradeValues, frmTradeValues);
  Application.CreateForm(TfrmAdminLogin, frmAdminLogin);
  Application.CreateForm(TfrmAdminInterface, frmAdminInterface);
  Application.CreateForm(TfrmFeedback, frmFeedback);
  Application.CreateForm(TfrmVideo, frmVideo);
  Application.Run;

end.
