//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untRelatorioPartida.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmRelatorioPartida *frmRelatorioPartida;
String min, max;
//---------------------------------------------------------------------------
__fastcall TfrmRelatorioPartida::TfrmRelatorioPartida(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmRelatorioPartida::edtFiltroAdversarioChange(TObject *Sender)
{
/*DM1->cdsRelatorio->Filtered = false;
DM1->cdsRelatorio->Filter = "Adversario_Partida LIKE" + QuotedStr(edtFiltroAdversario->Text+"%");
//						+ "and Local_Partida LIKE" + QuotedStr("%"+edtFiltroLocalPartida->Text+"%")
//						+ "and Data_Partida LIKE" + QuotedStr("%"+edtFiltroDataPartida->Text+"%");
DM1->cdsRelatorio->Filtered = true;
DM1->cdsRelatorio->Refresh();

DM1->SQLQRelatorio->SQL->Clear();
DM1->SQLQRelatorio->SQL->Add("SELECT * FROM scoult.tbpartida, scoult.tbtime, scoult.tbscoutpartida WHERE scoult.tbpartida.Cod_Time_Partida = scoult.tbtime.Cod_Time AND scoult.tbpartida.Cod_Scout_Partida = scoult.tbscoutpartida.Cod_Scout AND scoult.tbpartida.Adversario_Partida LIKE '" + edtFiltroAdversario->Text + "%' ORDER BY scoult.tbscoutpartida.Cod_Scout ASC;");
DM1->SQLQRelatorio->Open();
DM1->cdsRelatorio->Refresh();

DM1->cdsRelatorio->First();
min = DM1->cdsRelatorio->FieldByName("Cod_Scout")->AsString;
DM1->cdsRelatorio->Last();
max = DM1->cdsRelatorio->FieldByName("Cod_Scout")->AsString;
DM1->SQLQMedia->SQL->Clear();
DM1->SQLQMedia->SQL->Add("SELECT round((sum(TotalChutesCertos_Scout)/sum(TotalChutes_Scout))*100) AS p100ChutesCertos, sum(TotalChutesCertos_Scout) AS TotalChutesCertos, round((sum(TotalChutesErrados_Scout)/sum(TotalChutes_Scout))*100) AS p100ChutesErrados, sum(TotalChutesErrados_Scout) AS TotalChutesErrados, sum(TotalChutes_Scout) AS TotalChutes, round((sum(TotalPassesCertos_Scout)/sum(TotalPasses_Scout))*100) AS p100PassesCertos, sum(TotalPassesCertos_Scout) AS TotalPassesCertos, round((sum(TotalPassesErrados_Scout)/sum(TotalPasses_Scout))*100) AS p100PassesErrados, sum(TotalPassesErrados_Scout) AS TotalPassesErrados, sum(TotalPasses_Scout) AS TotalPasses, sum(TotalAssistencias_Scout) as TotalAssistencias FROM scoult.tbscoutpartida WHERE scoult.tbscoutpartida.Cod_Scout between '" + min + "' and '" + max + "';");
DM1->SQLQMedia->Open();
DM1->cdsMedia->Refresh();*/
}
//---------------------------------------------------------------------------
void __fastcall TfrmRelatorioPartida::btnRelatorioCompletoClick(TObject *Sender)
{
DM1->frxRepRelCompletoP->ShowReport();
}
//---------------------------------------------------------------------------
void __fastcall TfrmRelatorioPartida::CBAdversarioMouseUp(TObject *Sender, TMouseButton Button,
		  TShiftState Shift, int X, int Y)
{
if (CBAdversario->Checked == true)
	edtFiltroAdversario->Enabled = true;
else
{
	edtFiltroAdversario->Enabled = false;
	edtFiltroAdversario->Clear();
}
CBData->Checked = false;
gbDatas->Enabled = false;
DM1->SQLQRelatorio->SQL->Clear();
DM1->SQLQRelatorio->SQL->Add("SELECT * FROM scoult.tbpartida, scoult.tbtime, scoult.tbscoutpartida WHERE scoult.tbpartida.Cod_Time_Partida = scoult.tbtime.Cod_Time AND scoult.tbpartida.Cod_Scout_Partida = scoult.tbscoutpartida.Cod_Scout ORDER BY scoult.tbscoutpartida.Cod_Scout ASC;");
DM1->SQLQRelatorio->Open();
DM1->cdsRelatorio->Refresh();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRelatorioPartida::CBDataMouseUp(TObject *Sender, TMouseButton Button,
		  TShiftState Shift, int X, int Y)
{
if (CBData->Checked == true)
	gbDatas->Enabled = true;
else
	gbDatas->Enabled = false;
edtFiltroAdversario->Enabled = false;
edtFiltroAdversario->Clear();
CBAdversario->Checked = false;
DM1->SQLQRelatorio->SQL->Clear();
DM1->SQLQRelatorio->SQL->Add("SELECT * FROM scoult.tbpartida, scoult.tbtime, scoult.tbscoutpartida WHERE scoult.tbpartida.Cod_Time_Partida = scoult.tbtime.Cod_Time AND scoult.tbpartida.Cod_Scout_Partida = scoult.tbscoutpartida.Cod_Scout AND scoult.tbpartida.Data_Partida BETWEEN '" + dtpInicio->Date.FormatString("yyyy/MM/dd") + "' AND '" + dtpFinal->Date.FormatString("yyyy/MM/dd") + "' ORDER BY scoult.tbscoutpartida.Cod_Scout ASC;");
DM1->SQLQRelatorio->Open();
DM1->cdsRelatorio->Refresh();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRelatorioPartida::btnLimpaFiltroClick(TObject *Sender)
{
DM1->SQLQRelatorio->SQL->Clear();
DM1->SQLQRelatorio->SQL->Add("SELECT * FROM scoult.tbpartida, scoult.tbtime, scoult.tbscoutpartida WHERE scoult.tbpartida.Cod_Time_Partida = scoult.tbtime.Cod_Time AND scoult.tbpartida.Cod_Scout_Partida = scoult.tbscoutpartida.Cod_Scout ORDER BY scoult.tbscoutpartida.Cod_Scout ASC;");
DM1->SQLQRelatorio->Open();
DM1->cdsRelatorio->Refresh();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRelatorioPartida::dtpInicioChange(TObject *Sender)
{
DM1->SQLQRelatorio->SQL->Clear();
DM1->SQLQRelatorio->SQL->Add("SELECT * FROM scoult.tbpartida, scoult.tbtime, scoult.tbscoutpartida WHERE scoult.tbpartida.Cod_Time_Partida = scoult.tbtime.Cod_Time AND scoult.tbpartida.Cod_Scout_Partida = scoult.tbscoutpartida.Cod_Scout AND scoult.tbpartida.Data_Partida BETWEEN '" + dtpInicio->Date.FormatString("yyyy/MM/dd") + "' AND '" + dtpFinal->Date.FormatString("yyyy/MM/dd") + "' ORDER BY scoult.tbscoutpartida.Cod_Scout ASC;");
DM1->SQLQRelatorio->Open();
DM1->cdsRelatorio->Refresh();

DM1->cdsRelatorio->First();
min = DM1->cdsRelatorio->FieldByName("Cod_Scout")->AsString;
DM1->cdsRelatorio->Last();
max = DM1->cdsRelatorio->FieldByName("Cod_Scout")->AsString;
DM1->SQLQMedia->SQL->Clear();
DM1->SQLQMedia->SQL->Add("SELECT round((sum(TotalChutesCertos_Scout)/sum(TotalChutes_Scout))*100) AS p100ChutesCertos, sum(TotalChutesCertos_Scout) AS TotalChutesCertos, round((sum(TotalChutesErrados_Scout)/sum(TotalChutes_Scout))*100) AS p100ChutesErrados, sum(TotalChutesErrados_Scout) AS TotalChutesErrados, sum(TotalChutes_Scout) AS TotalChutes, round((sum(TotalPassesCertos_Scout)/sum(TotalPasses_Scout))*100) AS p100PassesCertos, sum(TotalPassesCertos_Scout) AS TotalPassesCertos, round((sum(TotalPassesErrados_Scout)/sum(TotalPasses_Scout))*100) AS p100PassesErrados, sum(TotalPassesErrados_Scout) AS TotalPassesErrados, sum(TotalPasses_Scout) AS TotalPasses, sum(TotalAssistencias_Scout) as TotalAssistencias FROM scoult.tbscoutpartida WHERE scoult.tbscoutpartida.Cod_Scout between '" + min + "' and '" + max + "';");
DM1->SQLQMedia->Open();
DM1->cdsMedia->Refresh();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRelatorioPartida::dtpFinalChange(TObject *Sender)
{
DM1->SQLQRelatorio->SQL->Clear();
DM1->SQLQRelatorio->SQL->Add("SELECT * FROM scoult.tbpartida, scoult.tbtime, scoult.tbscoutpartida WHERE scoult.tbpartida.Cod_Time_Partida = scoult.tbtime.Cod_Time AND scoult.tbpartida.Cod_Scout_Partida = scoult.tbscoutpartida.Cod_Scout AND scoult.tbpartida.Data_Partida BETWEEN '" + dtpInicio->Date.FormatString("yyyy/MM/dd") + "' AND '" + dtpFinal->Date.FormatString("yyyy/MM/dd") + "' ORDER BY scoult.tbscoutpartida.Cod_Scout ASC;");
DM1->SQLQRelatorio->Open();
DM1->cdsRelatorio->Refresh();

DM1->cdsRelatorio->First();
min = DM1->cdsRelatorio->FieldByName("Cod_Scout")->AsString;
DM1->cdsRelatorio->Last();
max = DM1->cdsRelatorio->FieldByName("Cod_Scout")->AsString;
DM1->SQLQMedia->SQL->Clear();
DM1->SQLQMedia->SQL->Add("SELECT round((sum(TotalChutesCertos_Scout)/sum(TotalChutes_Scout))*100) AS p100ChutesCertos, sum(TotalChutesCertos_Scout) AS TotalChutesCertos, round((sum(TotalChutesErrados_Scout)/sum(TotalChutes_Scout))*100) AS p100ChutesErrados, sum(TotalChutesErrados_Scout) AS TotalChutesErrados, sum(TotalChutes_Scout) AS TotalChutes, round((sum(TotalPassesCertos_Scout)/sum(TotalPasses_Scout))*100) AS p100PassesCertos, sum(TotalPassesCertos_Scout) AS TotalPassesCertos, round((sum(TotalPassesErrados_Scout)/sum(TotalPasses_Scout))*100) AS p100PassesErrados, sum(TotalPassesErrados_Scout) AS TotalPassesErrados, sum(TotalPasses_Scout) AS TotalPasses, sum(TotalAssistencias_Scout) as TotalAssistencias FROM scoult.tbscoutpartida WHERE scoult.tbscoutpartida.Cod_Scout between '" + min + "' and '" + max + "';");
DM1->SQLQMedia->Open();
DM1->cdsMedia->Refresh();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRelatorioPartida::FormShow(TObject *Sender)
{
DM1->cdsTime->Active = true;
DM1->cdsRelatorio->Active = true;
DM1->cdsMedia->Active = true;
dtpInicio->Date = dtpInicio->MinDate;
dtpFinal->Date = dtpFinal->Date.CurrentDate();
if (DM1->cdsRelatorio->RecordCount == 0)
	ShowMessage("Não há dados para relatório, \nAllimente o sistema para poder emitir relatórios.");

DM1->cdsTime->First();
DBCBNomeTime->Items->Clear();
for (int i = 0; i < DM1->cdsTime->RecordCount; i++)
{
	DBCBNomeTime->Items->Add(DM1->cdsTimeNome_Time->Value);
	DM1->cdsTime->Next();
}
DBCBNomeTime->Text = "";
}
//---------------------------------------------------------------------------


void __fastcall TfrmRelatorioPartida::btnRelatorioConsolidadoClick(TObject *Sender)

{
DM1->frxRepRelConsolidadoP->ShowReport();
}
//---------------------------------------------------------------------------


void __fastcall TfrmRelatorioPartida::btnRelatorioItemSelecionadoClick(TObject *Sender)

{
DM1->SQLQSelecao->SQL->Clear();
DM1->SQLQSelecao->SQL->Add("SELECT * FROM scoult.tbpartida, scoult.tbtime, scoult.tbscoutpartida WHERE scoult.tbpartida.Cod_Time_Partida = scoult.tbtime.Cod_Time AND scoult.tbpartida.Cod_Scout_Partida = scoult.tbscoutpartida.Cod_Scout AND scoult.tbpartida.Cod_Scout_Partida = " + DM1->cdsRelatorio->FieldByName("Cod_Scout_Partida")->AsString);
DM1->SQLQSelecao->Open();
DM1->frxRepRelItemSelecionadoP->ShowReport();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRelatorioPartida::FormClose(TObject *Sender, TCloseAction &Action)
{
DM1->cdsRelatorio->Active = false;
DM1->cdsMedia->Active = false;
DM1->cdsTime->Active = false;
//DM1->cdsRelatorio->Filtered = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRelatorioPartida::DBCBNomeTimeChange(TObject *Sender)
{
DM1->SQLQRelatorio->SQL->Clear();
DM1->SQLQRelatorio->SQL->Add("SELECT * FROM scoult.tbpartida, scoult.tbtime, scoult.tbscoutpartida WHERE scoult.tbpartida.Cod_Time_Partida = scoult.tbtime.Cod_Time AND scoult.tbpartida.Cod_Scout_Partida = scoult.tbscoutpartida.Cod_Scout AND scoult.tbtime.Nome_Time LIKE '" + DBCBNomeTime->Text + "%' ORDER BY scoult.tbscoutpartida.Cod_Scout ASC;");
DM1->SQLQRelatorio->Open();
DM1->cdsRelatorio->Refresh();
}
//---------------------------------------------------------------------------

