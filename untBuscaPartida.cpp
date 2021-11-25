//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untBuscaPartida.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmBuscaPartida *frmBuscaPartida;
//---------------------------------------------------------------------------
__fastcall TfrmBuscaPartida::TfrmBuscaPartida(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaPartida::btnFecharClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaPartida::FormShow(TObject *Sender)
{
DM1->cdsPartida->Active = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaPartida::FormClose(TObject *Sender, TCloseAction &Action)
{
/*if (frmEditaPartida->Active == false)
{
	DM1->cdsPartida->Active = false;
}*/
DM1->cdsPartida->Filtered = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaPartida::edtFiltroAdversarioChange(TObject *Sender)
{
DM1->cdsPartida->Filtered = false;
DM1->cdsPartida->Filter = "Adversario_Partida LIKE" + QuotedStr("%"+edtFiltroAdversario->Text+"%")
						+ "and Local_Partida LIKE" + QuotedStr("%"+edtFiltroLocalPartida->Text+"%");
//						+ "and Data_Partida LIKE" + QuotedStr("%"+edtFiltroDataPartida->Text+"%");
DM1->cdsPartida->Filtered = true;
DM1->cdsPartida->Refresh();
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaPartida::edtFiltroLocalPartidaChange(TObject *Sender)
{
DM1->cdsPartida->Filtered = false;
DM1->cdsPartida->Filter = "Adversario_Partida LIKE" + QuotedStr("%"+edtFiltroAdversario->Text+"%")
						+ "and Local_Partida LIKE" + QuotedStr("%"+edtFiltroLocalPartida->Text+"%");
//						+ "and Data_Partida LIKE" + QuotedStr("%"+edtFiltroDataPartida->Text+"%");
DM1->cdsPartida->Filtered = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaPartida::edtFiltroDataPartidaChange(TObject *Sender)
{
DM1->cdsPartida->Filtered = false;
DM1->cdsPartida->Filter = "Adversario_Partida LIKE" + QuotedStr("%"+edtFiltroAdversario->Text+"%")
						+ "and Local_Partida LIKE" + QuotedStr("%"+edtFiltroLocalPartida->Text+"%");
//						+ "and Data_Partida LIKE" + QuotedStr("%"+edtFiltroDataPartida->Text+"%");
DM1->cdsPartida->Filtered = true;
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaPartida::btnSelecionarClick(TObject *Sender)
{
//LIMPA TODOS OS CAMPOS NOME DE JOGADOR
frmEditaPartida->edt1->Clear();
frmEditaPartida->edt2->Clear();
frmEditaPartida->edt3->Clear();
frmEditaPartida->edt4->Clear();
frmEditaPartida->edt5->Clear();
frmEditaPartida->edt6->Clear();
frmEditaPartida->edt7->Clear();
frmEditaPartida->edt8->Clear();
frmEditaPartida->edt9->Clear();
frmEditaPartida->edt10->Clear();
frmEditaPartida->edt11->Clear();
frmEditaPartida->edt12->Clear();

//LIMPAR TODOS OS CAMPOS, PARA O PRÓXIMO SCOULT
frmEditaPartida->edtAdversario->Text = "ADVERSÁRIO";
frmEditaPartida->edtLocalPartida->Text = "LOCAL DA PARTIDA";
frmEditaPartida->edtGolsContra->Text = "0";

frmEditaPartida->edtPC1->Text = "0";
frmEditaPartida->edtPC2->Text = "0";
frmEditaPartida->edtPC3->Text = "0";
frmEditaPartida->edtPC4->Text = "0";
frmEditaPartida->edtPC5->Text = "0";
frmEditaPartida->edtPC6->Text = "0";
frmEditaPartida->edtPC7->Text = "0";
frmEditaPartida->edtPC8->Text = "0";
frmEditaPartida->edtPC9->Text = "0";
frmEditaPartida->edtPC10->Text = "0";
frmEditaPartida->edtPC11->Text = "0";
frmEditaPartida->edtPC12->Text = "0";

frmEditaPartida->edtPE1->Text = "0";
frmEditaPartida->edtPE2->Text = "0";
frmEditaPartida->edtPE3->Text = "0";
frmEditaPartida->edtPE4->Text = "0";
frmEditaPartida->edtPE5->Text = "0";
frmEditaPartida->edtPE6->Text = "0";
frmEditaPartida->edtPE7->Text = "0";
frmEditaPartida->edtPE8->Text = "0";
frmEditaPartida->edtPE9->Text = "0";
frmEditaPartida->edtPE10->Text = "0";
frmEditaPartida->edtPE11->Text = "0";
frmEditaPartida->edtPE12->Text = "0";

frmEditaPartida->edtTP1->Text = "0";
frmEditaPartida->edtTP2->Text = "0";
frmEditaPartida->edtTP3->Text = "0";
frmEditaPartida->edtTP4->Text = "0";
frmEditaPartida->edtTP5->Text = "0";
frmEditaPartida->edtTP6->Text = "0";
frmEditaPartida->edtTP7->Text = "0";
frmEditaPartida->edtTP8->Text = "0";
frmEditaPartida->edtTP9->Text = "0";
frmEditaPartida->edtTP10->Text = "0";
frmEditaPartida->edtTP11->Text = "0";
frmEditaPartida->edtTP12->Text = "0";

frmEditaPartida->edtCC1->Text = "0";
frmEditaPartida->edtCC2->Text = "0";
frmEditaPartida->edtCC3->Text = "0";
frmEditaPartida->edtCC4->Text = "0";
frmEditaPartida->edtCC5->Text = "0";
frmEditaPartida->edtCC6->Text = "0";
frmEditaPartida->edtCC7->Text = "0";
frmEditaPartida->edtCC8->Text = "0";
frmEditaPartida->edtCC9->Text = "0";
frmEditaPartida->edtCC10->Text = "0";
frmEditaPartida->edtCC11->Text = "0";
frmEditaPartida->edtCC12->Text = "0";

frmEditaPartida->edtTC1->Text = "0";
frmEditaPartida->edtTC2->Text = "0";
frmEditaPartida->edtTC3->Text = "0";
frmEditaPartida->edtTC4->Text = "0";
frmEditaPartida->edtTC5->Text = "0";
frmEditaPartida->edtTC6->Text = "0";
frmEditaPartida->edtTC7->Text = "0";
frmEditaPartida->edtTC8->Text = "0";
frmEditaPartida->edtTC9->Text = "0";
frmEditaPartida->edtTC10->Text = "0";
frmEditaPartida->edtTC11->Text = "0";
frmEditaPartida->edtTC12->Text = "0";

frmEditaPartida->edtCE1->Text = "0";
frmEditaPartida->edtCE2->Text = "0";
frmEditaPartida->edtCE3->Text = "0";
frmEditaPartida->edtCE4->Text = "0";
frmEditaPartida->edtCE5->Text = "0";
frmEditaPartida->edtCE6->Text = "0";
frmEditaPartida->edtCE7->Text = "0";
frmEditaPartida->edtCE8->Text = "0";
frmEditaPartida->edtCE9->Text = "0";
frmEditaPartida->edtCE10->Text = "0";
frmEditaPartida->edtCE11->Text = "0";
frmEditaPartida->edtCE12->Text = "0";

frmEditaPartida->edtA1->Text = "0";
frmEditaPartida->edtA2->Text = "0";
frmEditaPartida->edtA3->Text = "0";
frmEditaPartida->edtA4->Text = "0";
frmEditaPartida->edtA5->Text = "0";
frmEditaPartida->edtA6->Text = "0";
frmEditaPartida->edtA7->Text = "0";
frmEditaPartida->edtA8->Text = "0";
frmEditaPartida->edtA9->Text = "0";
frmEditaPartida->edtA10->Text = "0";
frmEditaPartida->edtA11->Text = "0";
frmEditaPartida->edtA12->Text = "0";

frmEditaPartida->edtG1->Text = "0";
frmEditaPartida->edtG2->Text = "0";
frmEditaPartida->edtG3->Text = "0";
frmEditaPartida->edtG4->Text = "0";
frmEditaPartida->edtG5->Text = "0";
frmEditaPartida->edtG6->Text = "0";
frmEditaPartida->edtG7->Text = "0";
frmEditaPartida->edtG8->Text = "0";
frmEditaPartida->edtG9->Text = "0";
frmEditaPartida->edtG10->Text = "0";
frmEditaPartida->edtG11->Text = "0";
frmEditaPartida->edtG12->Text = "0";

DM1->cdsTime->Active = true;
DM1->cdsScoutpartida->Active = true;
DM1->cdsScoutatleta->Active = true;
DM1->cdsPartida->Active = true;

frmEditaPartida->edtGolsPro->Text = DM1->cdsPartida->FieldByName("GolsPro_Partida")->AsString;
frmEditaPartida->edtGolsContra->Text = DM1->cdsPartida->FieldByName("GolsContra_Partida")->AsString;
frmEditaPartida->edtAdversario->Text = DM1->cdsPartida->FieldByName("Adversario_Partida")->AsString;
frmEditaPartida->edtLocalPartida->Text = DM1->cdsPartida->FieldByName("Local_Partida")->AsString;
frmEditaPartida->DTPDataPartida->Format = "yyyy/dd/MM";
frmEditaPartida->DTPDataPartida->Date = DM1->cdsPartida->FieldByName("Data_partida")->AsDateTime;
frmEditaPartida->DTPDataPartida->Format = "";

DM1->SQLQTime->SQL->Clear();
DM1->SQLQTime->SQL->Add("SELECT * FROM tbtime WHERE tbtime.Cod_Time = " + DM1->cdsPartida->FieldByName("Cod_Time_Partida")->AsString);
DM1->SQLQTime->Open();
DM1->cdsTime2->Active = true;
DM1->cdsTime2->Refresh();
frmEditaPartida->edtTime->Text = DM1->cdsTime2->FieldByName("Nome_Time")->AsString;

//PREENCHIMENTO DOS ATLETAS
DM1->SQLQAtleta->SQL->Clear();
DM1->SQLQAtleta->SQL->Add("SELECT * FROM tbatleta WHERE tbatleta.Cod_Time_Atleta = " + DM1->cdsTime2->FieldByName("Cod_Time")->AsString);
DM1->SQLQAtleta->Open();
DM1->cdsAtleta2->Active = true;
DM1->cdsAtleta2->Refresh();
DM1->cdsAtleta2->First();
NAtletas = DM1->cdsAtleta2->RecordCount;
for (int i = 1; i <= NAtletas; i++)
{
	if (i == 1)
	{
		frmEditaPartida->edt1->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 2)
	{
		frmEditaPartida->edt2->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 3)
	{
		frmEditaPartida->edt3->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 4)
	{
		frmEditaPartida->edt4->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 5)
	{
		frmEditaPartida->edt5->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 6)
	{
		frmEditaPartida->edt6->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 7)
	{
		frmEditaPartida->edt7->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 8)
	{
		frmEditaPartida->edt8->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 9)
	{
		frmEditaPartida->edt9->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 10)
	{
		frmEditaPartida->edt10->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 11)
	{
		frmEditaPartida->edt11->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 12)
	{
		frmEditaPartida->edt12->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
}

//PREENCHIMENTO DO SCOUT DA PARTIDA (DADOS TOTAIS)
DM1->SQLQScoutPartida->SQL->Clear();
DM1->SQLQScoutPartida->SQL->Add("SELECT * FROM tbscoutpartida WHERE tbscoutpartida.Cod_Scout = " + DM1->cdsPartida->FieldByName("Cod_Scout_Partida")->AsString);
DM1->SQLQScoutPartida->Open();
DM1->cdsScoutPartida2->Active = true;
DM1->cdsScoutPartida2->Refresh();
frmEditaPartida->edtPCTotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalPassesCertos_Scout")->AsString;
frmEditaPartida->edtPETotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalPasseseRRADOS_Scout")->AsString;
frmEditaPartida->edtTPTotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalPasses_Scout")->AsString;
frmEditaPartida->edtCCTotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalChutesCertos_Scout")->AsString;
frmEditaPartida->edtCETotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalChutesErrados_Scout")->AsString;
frmEditaPartida->edtTCTotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalChutes_Scout")->AsString;
frmEditaPartida->edtATotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalAssistencias_Scout")->AsString;
frmEditaPartida->edtGTotal->Text = frmEditaPartida->edtGolsPro->Text;

//PREENCHIMENTO DO SCOUT INDIVIDUAL DE CADA ATLETA
DM1->SQLQScoutAtleta->SQL->Clear();
DM1->SQLQScoutAtleta->SQL->Add("SELECT * FROM tbscoutatleta WHERE tbscoutatleta.Cod_Partida_Scoult = " + DM1->cdsPartida->FieldByName("Cod_Partida")->AsString);
DM1->SQLQScoutAtleta->Open();
DM1->cdsScoutAtleta2->Active = true;
DM1->cdsScoutAtleta2->Refresh();
NAtletas = DM1->cdsScoutAtleta2->RecordCount;
DM1->cdsScoutAtleta2->First();

for (int i = 1; i <= NAtletas; i++)
{
	if (i == 1)
	{
		frmEditaPartida->edtPC1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP1->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA1->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG1->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 2)
	{
		frmEditaPartida->edtPC2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP2->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA2->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG2->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 3)
	{
		frmEditaPartida->edtPC3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP3->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA3->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG3->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 4)
	{
		frmEditaPartida->edtPC4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP4->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA4->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG4->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 5)
	{
		frmEditaPartida->edtPC5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP5->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA5->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG5->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 6)
	{
		frmEditaPartida->edtPC6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP6->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA6->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG6->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 7)
	{
		frmEditaPartida->edtPC7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP7->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA7->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG7->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 8)
	{
		frmEditaPartida->edtPC8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP8->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA8->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG8->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 9)
	{
		frmEditaPartida->edtPC9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP9->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA9->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG9->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 10)
	{
		frmEditaPartida->edtPC10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP10->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA10->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG10->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 11)
	{
		frmEditaPartida->edtPC11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP11->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA11->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG11->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 12)
	{
		frmEditaPartida->edtPC12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP12->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA12->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG12->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaPartida::DBGrid1DblClick(TObject *Sender)
{
//LIMPA TODOS OS CAMPOS NOME DE JOGADOR
frmEditaPartida->edt1->Clear();
frmEditaPartida->edt2->Clear();
frmEditaPartida->edt3->Clear();
frmEditaPartida->edt4->Clear();
frmEditaPartida->edt5->Clear();
frmEditaPartida->edt6->Clear();
frmEditaPartida->edt7->Clear();
frmEditaPartida->edt8->Clear();
frmEditaPartida->edt9->Clear();
frmEditaPartida->edt10->Clear();
frmEditaPartida->edt11->Clear();
frmEditaPartida->edt12->Clear();

//LIMPAR TODOS OS CAMPOS, PARA O PRÓXIMO SCOULT
frmEditaPartida->edtAdversario->Text = "ADVERSÁRIO";
frmEditaPartida->edtLocalPartida->Text = "LOCAL DA PARTIDA";
frmEditaPartida->edtGolsContra->Text = "0";

frmEditaPartida->edtPC1->Text = "0";
frmEditaPartida->edtPC2->Text = "0";
frmEditaPartida->edtPC3->Text = "0";
frmEditaPartida->edtPC4->Text = "0";
frmEditaPartida->edtPC5->Text = "0";
frmEditaPartida->edtPC6->Text = "0";
frmEditaPartida->edtPC7->Text = "0";
frmEditaPartida->edtPC8->Text = "0";
frmEditaPartida->edtPC9->Text = "0";
frmEditaPartida->edtPC10->Text = "0";
frmEditaPartida->edtPC11->Text = "0";
frmEditaPartida->edtPC12->Text = "0";

frmEditaPartida->edtPE1->Text = "0";
frmEditaPartida->edtPE2->Text = "0";
frmEditaPartida->edtPE3->Text = "0";
frmEditaPartida->edtPE4->Text = "0";
frmEditaPartida->edtPE5->Text = "0";
frmEditaPartida->edtPE6->Text = "0";
frmEditaPartida->edtPE7->Text = "0";
frmEditaPartida->edtPE8->Text = "0";
frmEditaPartida->edtPE9->Text = "0";
frmEditaPartida->edtPE10->Text = "0";
frmEditaPartida->edtPE11->Text = "0";
frmEditaPartida->edtPE12->Text = "0";

frmEditaPartida->edtTP1->Text = "0";
frmEditaPartida->edtTP2->Text = "0";
frmEditaPartida->edtTP3->Text = "0";
frmEditaPartida->edtTP4->Text = "0";
frmEditaPartida->edtTP5->Text = "0";
frmEditaPartida->edtTP6->Text = "0";
frmEditaPartida->edtTP7->Text = "0";
frmEditaPartida->edtTP8->Text = "0";
frmEditaPartida->edtTP9->Text = "0";
frmEditaPartida->edtTP10->Text = "0";
frmEditaPartida->edtTP11->Text = "0";
frmEditaPartida->edtTP12->Text = "0";

frmEditaPartida->edtCC1->Text = "0";
frmEditaPartida->edtCC2->Text = "0";
frmEditaPartida->edtCC3->Text = "0";
frmEditaPartida->edtCC4->Text = "0";
frmEditaPartida->edtCC5->Text = "0";
frmEditaPartida->edtCC6->Text = "0";
frmEditaPartida->edtCC7->Text = "0";
frmEditaPartida->edtCC8->Text = "0";
frmEditaPartida->edtCC9->Text = "0";
frmEditaPartida->edtCC10->Text = "0";
frmEditaPartida->edtCC11->Text = "0";
frmEditaPartida->edtCC12->Text = "0";

frmEditaPartida->edtTC1->Text = "0";
frmEditaPartida->edtTC2->Text = "0";
frmEditaPartida->edtTC3->Text = "0";
frmEditaPartida->edtTC4->Text = "0";
frmEditaPartida->edtTC5->Text = "0";
frmEditaPartida->edtTC6->Text = "0";
frmEditaPartida->edtTC7->Text = "0";
frmEditaPartida->edtTC8->Text = "0";
frmEditaPartida->edtTC9->Text = "0";
frmEditaPartida->edtTC10->Text = "0";
frmEditaPartida->edtTC11->Text = "0";
frmEditaPartida->edtTC12->Text = "0";

frmEditaPartida->edtCE1->Text = "0";
frmEditaPartida->edtCE2->Text = "0";
frmEditaPartida->edtCE3->Text = "0";
frmEditaPartida->edtCE4->Text = "0";
frmEditaPartida->edtCE5->Text = "0";
frmEditaPartida->edtCE6->Text = "0";
frmEditaPartida->edtCE7->Text = "0";
frmEditaPartida->edtCE8->Text = "0";
frmEditaPartida->edtCE9->Text = "0";
frmEditaPartida->edtCE10->Text = "0";
frmEditaPartida->edtCE11->Text = "0";
frmEditaPartida->edtCE12->Text = "0";

frmEditaPartida->edtA1->Text = "0";
frmEditaPartida->edtA2->Text = "0";
frmEditaPartida->edtA3->Text = "0";
frmEditaPartida->edtA4->Text = "0";
frmEditaPartida->edtA5->Text = "0";
frmEditaPartida->edtA6->Text = "0";
frmEditaPartida->edtA7->Text = "0";
frmEditaPartida->edtA8->Text = "0";
frmEditaPartida->edtA9->Text = "0";
frmEditaPartida->edtA10->Text = "0";
frmEditaPartida->edtA11->Text = "0";
frmEditaPartida->edtA12->Text = "0";

frmEditaPartida->edtG1->Text = "0";
frmEditaPartida->edtG2->Text = "0";
frmEditaPartida->edtG3->Text = "0";
frmEditaPartida->edtG4->Text = "0";
frmEditaPartida->edtG5->Text = "0";
frmEditaPartida->edtG6->Text = "0";
frmEditaPartida->edtG7->Text = "0";
frmEditaPartida->edtG8->Text = "0";
frmEditaPartida->edtG9->Text = "0";
frmEditaPartida->edtG10->Text = "0";
frmEditaPartida->edtG11->Text = "0";
frmEditaPartida->edtG12->Text = "0";

DM1->cdsTime->Active = true;
DM1->cdsScoutpartida->Active = true;
DM1->cdsScoutatleta->Active = true;
DM1->cdsPartida->Active = true;

frmEditaPartida->edtGolsPro->Text = DM1->cdsPartida->FieldByName("GolsPro_Partida")->AsString;
frmEditaPartida->edtGolsContra->Text = DM1->cdsPartida->FieldByName("GolsContra_Partida")->AsString;
frmEditaPartida->edtAdversario->Text = DM1->cdsPartida->FieldByName("Adversario_Partida")->AsString;
frmEditaPartida->edtLocalPartida->Text = DM1->cdsPartida->FieldByName("Local_Partida")->AsString;
frmEditaPartida->DTPDataPartida->Format = "yyyy/dd/MM";
frmEditaPartida->DTPDataPartida->Date = DM1->cdsPartida->FieldByName("Data_partida")->AsDateTime;
frmEditaPartida->DTPDataPartida->Format = "";

DM1->SQLQTime->SQL->Clear();
DM1->SQLQTime->SQL->Add("SELECT * FROM tbtime WHERE tbtime.Cod_Time = " + DM1->cdsPartida->FieldByName("Cod_Time_Partida")->AsString);
DM1->SQLQTime->Open();
DM1->cdsTime2->Active = true;
DM1->cdsTime2->Refresh();
frmEditaPartida->edtTime->Text = DM1->cdsTime2->FieldByName("Nome_Time")->AsString;

//PREENCHIMENTO DOS ATLETAS
DM1->SQLQAtleta->SQL->Clear();
DM1->SQLQAtleta->SQL->Add("SELECT * FROM tbatleta WHERE tbatleta.Cod_Time_Atleta = " + DM1->cdsTime2->FieldByName("Cod_Time")->AsString);
DM1->SQLQAtleta->Open();
DM1->cdsAtleta2->Active = true;
DM1->cdsAtleta2->Refresh();
DM1->cdsAtleta2->First();
NAtletas = DM1->cdsAtleta2->RecordCount;
for (int i = 1; i <= NAtletas; i++)
{
	if (i == 1)
	{
		frmEditaPartida->edt1->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 2)
	{
		frmEditaPartida->edt2->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 3)
	{
		frmEditaPartida->edt3->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 4)
	{
		frmEditaPartida->edt4->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 5)
	{
		frmEditaPartida->edt5->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 6)
	{
		frmEditaPartida->edt6->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 7)
	{
		frmEditaPartida->edt7->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 8)
	{
		frmEditaPartida->edt8->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 9)
	{
		frmEditaPartida->edt9->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 10)
	{
		frmEditaPartida->edt10->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 11)
	{
		frmEditaPartida->edt11->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
	if (i == 12)
	{
		frmEditaPartida->edt12->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
		DM1->cdsAtleta2->Next();
	}
}

//PREENCHIMENTO DO SCOUT DA PARTIDA (DADOS TOTAIS)
DM1->SQLQScoutPartida->SQL->Clear();
DM1->SQLQScoutPartida->SQL->Add("SELECT * FROM tbscoutpartida WHERE tbscoutpartida.Cod_Scout = " + DM1->cdsPartida->FieldByName("Cod_Scout_Partida")->AsString);
DM1->SQLQScoutPartida->Open();
DM1->cdsScoutPartida2->Active = true;
DM1->cdsScoutPartida2->Refresh();
frmEditaPartida->edtPCTotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalPassesCertos_Scout")->AsString;
frmEditaPartida->edtPETotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalPasseseRRADOS_Scout")->AsString;
frmEditaPartida->edtTPTotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalPasses_Scout")->AsString;
frmEditaPartida->edtCCTotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalChutesCertos_Scout")->AsString;
frmEditaPartida->edtCETotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalChutesErrados_Scout")->AsString;
frmEditaPartida->edtTCTotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalChutes_Scout")->AsString;
frmEditaPartida->edtATotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalAssistencias_Scout")->AsString;
frmEditaPartida->edtGTotal->Text = frmEditaPartida->edtGolsPro->Text;

//PREENCHIMENTO DO SCOUT INDIVIDUAL DE CADA ATLETA
DM1->SQLQScoutAtleta->SQL->Clear();
DM1->SQLQScoutAtleta->SQL->Add("SELECT * FROM tbscoutatleta WHERE tbscoutatleta.Cod_Partida_Scoult = " + DM1->cdsPartida->FieldByName("Cod_Partida")->AsString);
DM1->SQLQScoutAtleta->Open();
DM1->cdsScoutAtleta2->Active = true;
DM1->cdsScoutAtleta2->Refresh();
NAtletas = DM1->cdsScoutAtleta2->RecordCount;
DM1->cdsScoutAtleta2->First();

for (int i = 1; i <= NAtletas; i++)
{
	if (i == 1)
	{
		frmEditaPartida->edtPC1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP1->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA1->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG1->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 2)
	{
		frmEditaPartida->edtPC2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP2->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA2->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG2->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 3)
	{
		frmEditaPartida->edtPC3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP3->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA3->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG3->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 4)
	{
		frmEditaPartida->edtPC4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP4->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA4->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG4->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 5)
	{
		frmEditaPartida->edtPC5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP5->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA5->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG5->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 6)
	{
		frmEditaPartida->edtPC6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP6->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA6->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG6->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 7)
	{
		frmEditaPartida->edtPC7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP7->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA7->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG7->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 8)
	{
		frmEditaPartida->edtPC8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP8->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA8->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG8->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 9)
	{
		frmEditaPartida->edtPC9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP9->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA9->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG9->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 10)
	{
		frmEditaPartida->edtPC10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP10->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA10->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG10->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 11)
	{
		frmEditaPartida->edtPC11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP11->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA11->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG11->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
	if (i == 12)
	{
		frmEditaPartida->edtPC12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
		frmEditaPartida->edtPE12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
		frmEditaPartida->edtTP12->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
		frmEditaPartida->edtCC12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
		frmEditaPartida->edtCE12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
		frmEditaPartida->edtTC12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
		frmEditaPartida->edtA12->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
		frmEditaPartida->edtG12->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
		DM1->cdsScoutAtleta2->Next();
	}
}
}
//---------------------------------------------------------------------------

