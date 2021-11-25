//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
#include "untRelatorioAtleta.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmRelatorioAtleta *frmRelatorioAtleta;
//---------------------------------------------------------------------------
__fastcall TfrmRelatorioAtleta::TfrmRelatorioAtleta(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmRelatorioAtleta::FormShow(TObject *Sender)
{
codAtleta = "0";
DM1->cdsPartida->Active = true;
DM1->cdsRelAtleta->Active = true;
DM1->SQLQRelAtleta->SQL->Clear();
DM1->SQLQRelAtleta->SQL->Add("SELECT * FROM scoult.tbscoutatleta, scoult.tbatleta WHERE scoult.tbscoutatleta.Cod_Partida_Scoult = " + DM1->cdsPartida->FieldByName("Cod_Partida")->AsString + " AND scoult.tbscoutatleta.Cod_Atleta_Scoult = scoult.tbatleta.Cod_Atleta AND scoult.tbatleta.Nome_Atleta LIKE '%' ORDER BY scoult.tbscoutatleta.Cod_Scout ASC;");
DM1->SQLQRelAtleta->Open();
DM1->cdsRelAtleta->Refresh();
codPartida = DM1->cdsPartida->FieldByName("Cod_Partida")->AsString;
}
//---------------------------------------------------------------------------
void __fastcall TfrmRelatorioAtleta::DBGrid1CellClick(TColumn *Column)
{
DM1->SQLQRelAtleta->SQL->Clear();
DM1->SQLQRelAtleta->SQL->Add("SELECT * FROM scoult.tbscoutatleta, scoult.tbatleta WHERE scoult.tbscoutatleta.Cod_Partida_Scoult = " + DM1->cdsPartida->FieldByName("Cod_Partida")->AsString + " AND scoult.tbscoutatleta.Cod_Atleta_Scoult = scoult.tbatleta.Cod_Atleta AND scoult.tbatleta.Nome_Atleta LIKE '%' ORDER BY scoult.tbscoutatleta.Cod_Scout ASC;");
DM1->SQLQRelAtleta->Open();
DM1->cdsRelAtleta->Refresh();
codPartida = DM1->cdsPartida->FieldByName("Cod_Partida")->AsString;
}
//---------------------------------------------------------------------------
void __fastcall TfrmRelatorioAtleta::FormClose(TObject *Sender, TCloseAction &Action)
{
DM1->cdsPartida->Active = false;
DM1->cdsRelAtleta->Active = false;
DM1->cdsPartida->Filtered = false;
}
//---------------------------------------------------------------------------
void __fastcall TfrmRelatorioAtleta::edtFiltroAdversarioChange(TObject *Sender)
{
DM1->cdsPartida->Filtered = false;
DM1->cdsPartida->Filter = "Adversario_Partida LIKE" + QuotedStr("%"+edtFiltroAdversario->Text+"%")
						+ "and Local_Partida LIKE" + QuotedStr("%"+edtFiltroLocalPartida->Text+"%");
//						+ "and Data_Partida LIKE" + QuotedStr("%"+edtFiltroDataPartida->Text+"%");
DM1->cdsPartida->Filtered = true;
DM1->cdsPartida->Refresh();
}
//---------------------------------------------------------------------------
void __fastcall TfrmRelatorioAtleta::edtFiltroLocalPartidaChange(TObject *Sender)
{
DM1->cdsPartida->Filtered = false;
DM1->cdsPartida->Filter = "Adversario_Partida LIKE" + QuotedStr("%"+edtFiltroAdversario->Text+"%")
						+ "and Local_Partida LIKE" + QuotedStr("%"+edtFiltroLocalPartida->Text+"%");
//						+ "and Data_Partida LIKE" + QuotedStr("%"+edtFiltroDataPartida->Text+"%");
DM1->cdsPartida->Filtered = true;
DM1->cdsPartida->Refresh();
}
//---------------------------------------------------------------------------
void __fastcall TfrmRelatorioAtleta::btnRelatorioCompletoClick(TObject *Sender)
{
DM1->cdsPartida->Filtered = false;
DM1->cdsPartida->Filter = "Cod_partida =" + codPartida;
DM1->cdsPartida->Filtered = true;
DM1->frxRepRelAtleta->ShowReport();
DM1->cdsPartida->Filtered = false;
}
//---------------------------------------------------------------------------
void __fastcall TfrmRelatorioAtleta::BitBtn1Click(TObject *Sender)
{
frmSelecionarAtletaRelatorio = new TfrmSelecionarAtletaRelatorio(Application);
frmSelecionarAtletaRelatorio->ShowModal();
delete frmSelecionarAtletaRelatorio;
if (codAtleta != "0")
{
DM1->SQLQRelCompAtleta->SQL->Clear();
DM1->SQLQRelCompAtleta->SQL->Add("SELECT sum(scoult.tbscoutatleta.Total_Passes_Scout) AS TotalPasses, sum(scoult.tbscoutatleta.TotalPassesCertos_Scout) AS TotalPassesCertos, sum(scoult.tbscoutatleta.TotalPassesErrados_Scout) AS TotalPassesErrados, sum(scoult.tbscoutatleta.Gols_Scout) AS Gols, sum(scoult.tbscoutatleta.Assistencias_Scout) AS Assistencias, sum(scoult.tbscoutatleta.TotalChutes_Scout) AS TotalChutes, sum(scoult.tbscoutatleta.TotalChutesCertos_Scout) AS TotalChutesCertos, sum(scoult.tbscoutatleta.TotalChutesErrados_Scout) AS TotalChutesErrados, round((sum(scoult.tbscoutatleta.TotalPassesCertos_Scout)/sum(scoult.tbscoutatleta.Total_Passes_Scout))*100) as p100PassesCertos, round((sum(scoult.tbscoutatleta.TotalPassesErrados_Scout)/sum(scoult.tbscoutatleta.Total_Passes_Scout))*100) as p100PassesErrados, round((sum(scoult.tbscoutatleta.TotalChutesCertos_Scout)/sum(scoult.tbscoutatleta.TotalChutes_Scout))*100) as p100ChutesCertos, round((sum(scoult.tbscoutatleta.TotalChutesErrados_Scout)/sum(scoult.tbscoutatleta.TotalChutes_Scout))*100) as p100ChutesErrados, scoult.tbatleta.Nome_Atleta FROM scoult.tbscoutatleta, scoult.tbatleta WHERE scoult.tbatleta.Cod_Atleta = scoult.tbscoutatleta.Cod_Atleta_Scoult AND scoult.tbscoutatleta.Cod_Atleta_Scoult = " + codAtleta + ";");
DM1->SQLQRelCompAtleta->Open();
DM1->frxRepRelCompAtleta->ShowReport();
codAtleta = "0";
}
}
//---------------------------------------------------------------------------
