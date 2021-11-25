//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untEditaPartida.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmEditaPartida *frmEditaPartida;
//---------------------------------------------------------------------------
__fastcall TfrmEditaPartida::TfrmEditaPartida(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmEditaPartida::FormShow(TObject *Sender)
{
DM1->cdsTime->Active = true;
DM1->cdsScoutpartida->Active = true;
DM1->cdsScoutatleta->Active = true;
DM1->cdsPartida->Active = true;
DM1->cdsPartida->First();
if (DM1->cdsPartida->RecordCount != 0)
{
	edtGolsPro->Text = DM1->cdsPartida->FieldByName("GolsPro_Partida")->AsString;
	edtGolsContra->Text = DM1->cdsPartida->FieldByName("GolsContra_Partida")->AsString;
	edtAdversario->Text = DM1->cdsPartida->FieldByName("Adversario_Partida")->AsString;
	edtLocalPartida->Text = DM1->cdsPartida->FieldByName("Local_Partida")->AsString;
//	DTPDataPartida->Format = "yyyy/dd/MM";
	DTPDataPartida->Date = DM1->cdsPartida->FieldByName("Data_partida")->AsDateTime;
//	DTPDataPartida->Format = "";

	DM1->SQLQTime->SQL->Clear();
	DM1->SQLQTime->SQL->Add("SELECT * FROM tbtime WHERE tbtime.Cod_Time = " + DM1->cdsPartida->FieldByName("Cod_Time_Partida")->AsString);
	DM1->SQLQTime->Open();
	DM1->cdsTime2->Active = true;
	DM1->cdsTime2->Refresh();
	edtTime->Text = DM1->cdsTime2->FieldByName("Nome_Time")->AsString;

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
			edt1->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 2)
		{
			edt2->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 3)
		{
			edt3->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 4)
		{
			edt4->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 5)
		{
			edt5->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 6)
		{
			edt6->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 7)
		{
			edt7->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 8)
		{
			edt8->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 9)
		{
			edt9->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 10)
		{
			edt10->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 11)
		{
			edt11->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 12)
		{
			edt12->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
	}

	//PREENCHIMENTO DO SCOUT DA PARTIDA (DADOS TOTAIS)
	DM1->SQLQScoutPartida->SQL->Clear();
	DM1->SQLQScoutPartida->SQL->Add("SELECT * FROM tbscoutpartida WHERE tbscoutpartida.Cod_Scout = " + DM1->cdsPartida->FieldByName("Cod_Scout_Partida")->AsString);
	DM1->SQLQScoutPartida->Open();
	DM1->cdsScoutPartida2->Active = true;
	DM1->cdsScoutPartida2->Refresh();
	edtPCTotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalPassesCertos_Scout")->AsString;
	edtPETotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalPasseseRRADOS_Scout")->AsString;
	edtTPTotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalPasses_Scout")->AsString;
	edtCCTotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalChutesCertos_Scout")->AsString;
	edtCETotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalChutesErrados_Scout")->AsString;
	edtTCTotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalChutes_Scout")->AsString;
	edtATotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalAssistencias_Scout")->AsString;
	edtGTotal->Text = edtGolsPro->Text;

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
			edtPC1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP1->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA1->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG1->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 2)
		{
			edtPC2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP2->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA2->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG2->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 3)
		{
			edtPC3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP3->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA3->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG3->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 4)
		{
			edtPC4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP4->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA4->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG4->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 5)
		{
			edtPC5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP5->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA5->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG5->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 6)
		{
			edtPC6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP6->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA6->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG6->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 7)
		{
			edtPC7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP7->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA7->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG7->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 8)
		{
			edtPC8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP8->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA8->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG8->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 9)
		{
			edtPC9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP9->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA9->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG9->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 10)
		{
			edtPC10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP10->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA10->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG10->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 11)
		{
			edtPC11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP11->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA11->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG11->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 12)
		{
			edtPC12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP12->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA12->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG12->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
	}

	DBNavigator1->SetFocus();
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::FormClose(TObject *Sender, TCloseAction &Action)
{
DM1->cdsTime->Active = false;
DM1->cdsScoutpartida->Active = false;
DM1->cdsScoutatleta->Active = false;
DM1->cdsPartida->Active = false;
DM1->cdsTime2->Active = false;
DM1->cdsAtleta2->Active = false;
DM1->cdsScoutPartida2->Active = false;
DM1->cdsScoutAtleta2->Active = false;
}
//---------------------------------------------------------------------------
void __fastcall TfrmEditaPartida::DBNavigator1Click(TObject *Sender, TNavigateBtn Button)
{
//LIMPA TODOS OS CAMPOS NOME DE JOGADOR
edt1->Clear();
edt2->Clear();
edt3->Clear();
edt4->Clear();
edt5->Clear();
edt6->Clear();
edt7->Clear();
edt8->Clear();
edt9->Clear();
edt10->Clear();
edt11->Clear();
edt12->Clear();

//LIMPAR TODOS OS CAMPOS, PARA O PRÓXIMO SCOULT
edtAdversario->Text = "ADVERSÁRIO";
edtLocalPartida->Text = "LOCAL DA PARTIDA";
edtGolsContra->Text = "0";

edtPC1->Text = "0";
edtPC2->Text = "0";
edtPC3->Text = "0";
edtPC4->Text = "0";
edtPC5->Text = "0";
edtPC6->Text = "0";
edtPC7->Text = "0";
edtPC8->Text = "0";
edtPC9->Text = "0";
edtPC10->Text = "0";
edtPC11->Text = "0";
edtPC12->Text = "0";

edtPE1->Text = "0";
edtPE2->Text = "0";
edtPE3->Text = "0";
edtPE4->Text = "0";
edtPE5->Text = "0";
edtPE6->Text = "0";
edtPE7->Text = "0";
edtPE8->Text = "0";
edtPE9->Text = "0";
edtPE10->Text = "0";
edtPE11->Text = "0";
edtPE12->Text = "0";

edtTP1->Text = "0";
edtTP2->Text = "0";
edtTP3->Text = "0";
edtTP4->Text = "0";
edtTP5->Text = "0";
edtTP6->Text = "0";
edtTP7->Text = "0";
edtTP8->Text = "0";
edtTP9->Text = "0";
edtTP10->Text = "0";
edtTP11->Text = "0";
edtTP12->Text = "0";

edtCC1->Text = "0";
edtCC2->Text = "0";
edtCC3->Text = "0";
edtCC4->Text = "0";
edtCC5->Text = "0";
edtCC6->Text = "0";
edtCC7->Text = "0";
edtCC8->Text = "0";
edtCC9->Text = "0";
edtCC10->Text = "0";
edtCC11->Text = "0";
edtCC12->Text = "0";

edtTC1->Text = "0";
edtTC2->Text = "0";
edtTC3->Text = "0";
edtTC4->Text = "0";
edtTC5->Text = "0";
edtTC6->Text = "0";
edtTC7->Text = "0";
edtTC8->Text = "0";
edtTC9->Text = "0";
edtTC10->Text = "0";
edtTC11->Text = "0";
edtTC12->Text = "0";

edtCE1->Text = "0";
edtCE2->Text = "0";
edtCE3->Text = "0";
edtCE4->Text = "0";
edtCE5->Text = "0";
edtCE6->Text = "0";
edtCE7->Text = "0";
edtCE8->Text = "0";
edtCE9->Text = "0";
edtCE10->Text = "0";
edtCE11->Text = "0";
edtCE12->Text = "0";

edtA1->Text = "0";
edtA2->Text = "0";
edtA3->Text = "0";
edtA4->Text = "0";
edtA5->Text = "0";
edtA6->Text = "0";
edtA7->Text = "0";
edtA8->Text = "0";
edtA9->Text = "0";
edtA10->Text = "0";
edtA11->Text = "0";
edtA12->Text = "0";

edtG1->Text = "0";
edtG2->Text = "0";
edtG3->Text = "0";
edtG4->Text = "0";
edtG5->Text = "0";
edtG6->Text = "0";
edtG7->Text = "0";
edtG8->Text = "0";
edtG9->Text = "0";
edtG10->Text = "0";
edtG11->Text = "0";
edtG12->Text = "0";

if (DM1->cdsPartida->RecordCount != 0)
{
	edtGolsPro->Text = DM1->cdsPartida->FieldByName("GolsPro_Partida")->AsString;
	edtGolsContra->Text = DM1->cdsPartida->FieldByName("GolsContra_Partida")->AsString;
	edtAdversario->Text = DM1->cdsPartida->FieldByName("Adversario_Partida")->AsString;
	edtLocalPartida->Text = DM1->cdsPartida->FieldByName("Local_Partida")->AsString;
	DTPDataPartida->Format = "yyyy/dd/MM";
	DTPDataPartida->Date = DM1->cdsPartida->FieldByName("Data_partida")->AsDateTime;
	DTPDataPartida->Format = "";

	DM1->SQLQTime->SQL->Clear();
	DM1->SQLQTime->SQL->Add("SELECT * FROM tbtime WHERE tbtime.Cod_Time = " + DM1->cdsPartida->FieldByName("Cod_Time_Partida")->AsString);
	DM1->SQLQTime->Open();
	DM1->cdsTime2->Active = true;
	DM1->cdsTime2->Refresh();
	edtTime->Text = DM1->cdsTime2->FieldByName("Nome_Time")->AsString;

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
			edt1->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 2)
		{
			edt2->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 3)
		{
			edt3->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 4)
		{
			edt4->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 5)
		{
			edt5->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 6)
		{
			edt6->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 7)
		{
			edt7->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 8)
		{
			edt8->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 9)
		{
			edt9->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 10)
		{
			edt10->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 11)
		{
			edt11->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
		if (i == 12)
		{
			edt12->Text = DM1->cdsAtleta2->FieldByName("Nome_Atleta")->AsString;
			DM1->cdsAtleta2->Next();
		}
	}

	DM1->SQLQScoutPartida->SQL->Clear();
	DM1->SQLQScoutPartida->SQL->Add("SELECT * FROM tbscoutpartida WHERE tbscoutpartida.Cod_Scout = " + DM1->cdsPartida->FieldByName("Cod_Scout_Partida")->AsString);
	DM1->SQLQScoutPartida->Open();
	DM1->cdsScoutPartida2->Active = true;
	DM1->cdsScoutPartida2->Refresh();
	edtPCTotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalPassesCertos_Scout")->AsString;
	edtPETotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalPasseseRRADOS_Scout")->AsString;
	edtTPTotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalPasses_Scout")->AsString;
	edtCCTotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalChutesCertos_Scout")->AsString;
	edtCETotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalChutesErrados_Scout")->AsString;
	edtTCTotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalChutes_Scout")->AsString;
	edtATotal->Text = DM1->cdsScoutPartida2->FieldByName("TotalAssistencias_Scout")->AsString;
	edtGTotal->Text = edtGolsPro->Text;

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
			edtPC1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP1->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC1->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA1->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG1->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 2)
		{
			edtPC2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP2->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC2->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA2->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG2->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 3)
		{
			edtPC3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP3->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC3->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA3->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG3->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 4)
		{
			edtPC4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP4->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC4->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA4->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG4->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 5)
		{
			edtPC5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP5->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC5->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA5->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG5->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 6)
		{
			edtPC6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP6->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC6->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA6->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG6->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 7)
		{
			edtPC7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP7->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC7->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA7->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG7->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 8)
		{
			edtPC8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP8->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC8->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA8->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG8->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 9)
		{
			edtPC9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP9->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC9->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA9->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG9->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 10)
		{
			edtPC10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP10->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC10->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA10->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG10->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 11)
		{
			edtPC11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP11->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC11->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA11->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG11->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 12)
		{
			edtPC12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString;
			edtPE12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString;
			edtTP12->Text = DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString;
			edtCC12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString;
			edtCE12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString;
			edtTC12->Text = DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString;
			edtA12->Text = DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString;
			edtG12->Text = DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString;
			DM1->cdsScoutAtleta2->Next();
		}
	}

	DBNavigator1->SetFocus();
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::btnFecharClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtG1Change(TObject *Sender)
{
edtGTotal->Text = IntToStr(StrToInt(edtG1->Text)+StrToInt(edtG2->Text)+StrToInt(edtG3->Text)+StrToInt(edtG4->Text)+StrToInt(edtG5->Text)+StrToInt(edtG6->Text)+StrToInt(edtG7->Text)+StrToInt(edtG8->Text)+StrToInt(edtG9->Text)+StrToInt(edtG10->Text)+StrToInt(edtG11->Text)+StrToInt(edtG12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtGTotalChange(TObject *Sender)
{
edtGolsPro->Text = edtGTotal->Text;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtA1Change(TObject *Sender)
{
edtATotal->Text = IntToStr(StrToInt(edtA1->Text)+StrToInt(edtA2->Text)+StrToInt(edtA3->Text)+StrToInt(edtA4->Text)+StrToInt(edtA5->Text)+StrToInt(edtA6->Text)+StrToInt(edtA7->Text)+StrToInt(edtA8->Text)+StrToInt(edtA9->Text)+StrToInt(edtA10->Text)+StrToInt(edtA11->Text)+StrToInt(edtA12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtCE1Change(TObject *Sender)
{
edtTC1->Text = IntToStr(StrToInt(edtCE1->Text)+ StrToInt(edtCC1->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtCE2Change(TObject *Sender)
{
edtTC2->Text = IntToStr(StrToInt(edtCE2->Text)+ StrToInt(edtCC2->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtCE3Change(TObject *Sender)
{
edtTC3->Text = IntToStr(StrToInt(edtCE3->Text)+ StrToInt(edtCC3->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtCE4Change(TObject *Sender)
{
edtTC4->Text = IntToStr(StrToInt(edtCE4->Text)+ StrToInt(edtCC4->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtCE5Change(TObject *Sender)
{
edtTC5->Text = IntToStr(StrToInt(edtCE5->Text)+ StrToInt(edtCC5->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtCE6Change(TObject *Sender)
{
edtTC6->Text = IntToStr(StrToInt(edtCE6->Text)+ StrToInt(edtCC6->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtCE7Change(TObject *Sender)
{
edtTC7->Text = IntToStr(StrToInt(edtCE7->Text)+ StrToInt(edtCC7->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtCE8Change(TObject *Sender)
{
edtTC8->Text = IntToStr(StrToInt(edtCE8->Text)+ StrToInt(edtCC8->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtCE9Change(TObject *Sender)
{
edtTC9->Text = IntToStr(StrToInt(edtCE9->Text)+ StrToInt(edtCC9->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtCE10Change(TObject *Sender)
{
edtTC10->Text = IntToStr(StrToInt(edtCE10->Text)+ StrToInt(edtCC10->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtCE11Change(TObject *Sender)
{
edtTC11->Text = IntToStr(StrToInt(edtCE11->Text)+ StrToInt(edtCC11->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtCE12Change(TObject *Sender)
{
edtTC12->Text = IntToStr(StrToInt(edtCE12->Text)+ StrToInt(edtCC12->Text));
edtCETotal->Text = IntToStr(StrToInt(edtCE1->Text)+StrToInt(edtCE2->Text)+StrToInt(edtCE3->Text)+StrToInt(edtCE4->Text)+StrToInt(edtCE5->Text)+StrToInt(edtCE6->Text)+StrToInt(edtCE7->Text)+StrToInt(edtCE8->Text)+StrToInt(edtCE9->Text)+StrToInt(edtCE10->Text)+StrToInt(edtCE11->Text)+StrToInt(edtCE12->Text));
edtCCTotal->Text = IntToStr(StrToInt(edtCC1->Text)+StrToInt(edtCC2->Text)+StrToInt(edtCC3->Text)+StrToInt(edtCC4->Text)+StrToInt(edtCC5->Text)+StrToInt(edtCC6->Text)+StrToInt(edtCC7->Text)+StrToInt(edtCC8->Text)+StrToInt(edtCC9->Text)+StrToInt(edtCC10->Text)+StrToInt(edtCC11->Text)+StrToInt(edtCC12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmEditaPartida::edtPE1Change(TObject *Sender)
{
edtTP1->Text = IntToStr(StrToInt(edtPC1->Text)+ StrToInt(edtPE1->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtPE2Change(TObject *Sender)
{
edtTP2->Text = IntToStr(StrToInt(edtPC2->Text)+ StrToInt(edtPE2->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------
void __fastcall TfrmEditaPartida::edtPE3Change(TObject *Sender)
{
edtTP3->Text = IntToStr(StrToInt(edtPC3->Text)+ StrToInt(edtPE3->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtPE4Change(TObject *Sender)
{
edtTP4->Text = IntToStr(StrToInt(edtPC4->Text)+ StrToInt(edtPE4->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtPE5Change(TObject *Sender)
{
edtTP5->Text = IntToStr(StrToInt(edtPC5->Text)+ StrToInt(edtPE5->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtPE6Change(TObject *Sender)
{
edtTP6->Text = IntToStr(StrToInt(edtPC6->Text)+ StrToInt(edtPE6->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtPE7Change(TObject *Sender)
{
edtTP7->Text = IntToStr(StrToInt(edtPC7->Text)+ StrToInt(edtPE7->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtPE8Change(TObject *Sender)
{
edtTP8->Text = IntToStr(StrToInt(edtPC8->Text)+ StrToInt(edtPE8->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtPE9Change(TObject *Sender)
{
edtTP9->Text = IntToStr(StrToInt(edtPC9->Text)+ StrToInt(edtPE9->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtPE10Change(TObject *Sender)
{
edtTP10->Text = IntToStr(StrToInt(edtPC10->Text)+ StrToInt(edtPE10->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtPE11Change(TObject *Sender)
{
edtTP11->Text = IntToStr(StrToInt(edtPC11->Text)+ StrToInt(edtPE11->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtPE12Change(TObject *Sender)
{
edtTP12->Text = IntToStr(StrToInt(edtPC12->Text)+ StrToInt(edtPE12->Text));
edtPCTotal->Text = IntToStr(StrToInt(edtPC1->Text)+StrToInt(edtPC2->Text)+StrToInt(edtPC3->Text)+StrToInt(edtPC4->Text)+StrToInt(edtPC5->Text)+StrToInt(edtPC6->Text)+StrToInt(edtPC7->Text)+StrToInt(edtPC8->Text)+StrToInt(edtPC9->Text)+StrToInt(edtPC10->Text)+StrToInt(edtPC11->Text)+StrToInt(edtPC12->Text));
edtPETotal->Text = IntToStr(StrToInt(edtPE1->Text)+StrToInt(edtPE2->Text)+StrToInt(edtPE3->Text)+StrToInt(edtPE4->Text)+StrToInt(edtPE5->Text)+StrToInt(edtPE6->Text)+StrToInt(edtPE7->Text)+StrToInt(edtPE8->Text)+StrToInt(edtPE9->Text)+StrToInt(edtPE10->Text)+StrToInt(edtPE11->Text)+StrToInt(edtPE12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtPETotalChange(TObject *Sender)
{
edtTPTotal->Text = IntToStr(StrToInt(edtPCTotal->Text)+StrToInt(edtPETotal->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::edtCCTotalChange(TObject *Sender)
{
edtTCTotal->Text = IntToStr(StrToInt(edtCCTotal->Text)+StrToInt(edtCETotal->Text));
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::btnEditarClick(TObject *Sender)
{
Image1->Visible = false;
Image2->Visible = false;
Panel1->Color = clBtnFace;
Panel2->Color = clBtnFace;
btnSalvarScout->Enabled = true;
Panel1->Enabled = true;
Panel2->Enabled = true;
btnEditar->Enabled = false;
DM1->cdsPartida->Edit();
DM1->cdsScoutPartida2->Edit();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::btnSalvarScoutClick(TObject *Sender)
{
Image1->Visible = true;
Image2->Visible = true;
Panel1->Color = clMedGray;
Panel2->Color = clMedGray;
btnSalvarScout->Enabled = false;
Panel1->Enabled = false;
Panel2->Enabled = false;
btnEditar->Enabled = true;

//VALIDAÇÃO DOS CAMPOS
if (edtAdversario->Text == "ADVERSÁRIO" || edtLocalPartida->Text == "LOCAL DA PARTIDA" || edtAdversario->Text == "" || edtLocalPartida->Text == "")
{
	MessageBoxA(NULL, "Favor preencher os campos: \n\n Nome do Adversário e  \n Local da partida \n\ncom os dados corretamente.", "Cadastro de Scout", MB_OK);
	edtAdversario->SetFocus();
}
else
{
	//GUARDANDO DADOS EDITADOS REFERENTES A PARTIDA
	DM1->cdsPartida->FieldByName("GolsPro_Partida")->AsString = edtGolsPro->Text.c_str();
	DM1->cdsPartida->FieldByName("GolsContra_Partida")->AsString = edtGolsContra->Text.c_str();
	DM1->cdsPartida->FieldByName("Adversario_Partida")->AsString = edtAdversario->Text.c_str();
	DM1->cdsPartida->FieldByName("Local_Partida")->AsString = edtLocalPartida->Text.c_str();
	DTPDataPartida->Format = "yyyy/dd/MM";
	DM1->cdsPartida->FieldByName("Data_partida")->AsString = DTPDataPartida->Date.DateString();
	DTPDataPartida->Format = "";
	DM1->cdsPartida->ApplyUpdates(0);
	DM1->cdsPartida->Refresh();

	//GUARDANDO DADOS EDITADOS REFERENTES AO SCOUT INDIVIDUAL DE CADA ATLETA
	NAtletas = DM1->cdsScoutAtleta2->RecordCount;
	DM1->cdsScoutAtleta2->First();

	for (int i = 1; i <= NAtletas; i++)
	{
		if (i == 1)
		{
			DM1->cdsScoutAtleta2->Edit();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC1->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE1->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString = edtTP1->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC1->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE1->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString = edtTC1->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString = edtA1->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString = edtG1->Text.c_str();
			DM1->cdsScoutAtleta2->ApplyUpdates(0);
			DM1->cdsScoutAtleta2->Refresh();
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 2)
		{
			DM1->cdsScoutAtleta2->Edit();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC2->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE2->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString = edtTP2->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC2->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE2->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString = edtTC2->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString = edtA2->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString = edtG2->Text.c_str();
			DM1->cdsScoutAtleta2->ApplyUpdates(0);
			DM1->cdsScoutAtleta2->Refresh();
			DM1->cdsScoutAtleta2->Next();		}
		if (i == 3)
		{
			DM1->cdsScoutAtleta2->Edit();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC3->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE3->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString = edtTP3->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC3->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE3->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString = edtTC3->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString = edtA3->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString = edtG3->Text.c_str();
			DM1->cdsScoutAtleta2->ApplyUpdates(0);
			DM1->cdsScoutAtleta2->Refresh();
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 4)
		{
			DM1->cdsScoutAtleta2->Edit();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC4->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE4->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString = edtTP4->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC4->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE4->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString = edtTC4->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString = edtA4->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString = edtG4->Text.c_str();
			DM1->cdsScoutAtleta2->ApplyUpdates(0);
			DM1->cdsScoutAtleta2->Refresh();
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 5)
		{
			DM1->cdsScoutAtleta2->Edit();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC5->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE5->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString = edtTP5->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC5->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE5->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString = edtTC5->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString = edtA5->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString = edtG5->Text.c_str();
			DM1->cdsScoutAtleta2->ApplyUpdates(0);
			DM1->cdsScoutAtleta2->Refresh();
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 6)
		{
			DM1->cdsScoutAtleta2->Edit();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC6->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE6->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString = edtTP6->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC6->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE6->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString = edtTC6->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString = edtA6->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString = edtG6->Text.c_str();
			DM1->cdsScoutAtleta2->ApplyUpdates(0);
			DM1->cdsScoutAtleta2->Refresh();
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 7)
		{
			DM1->cdsScoutAtleta2->Edit();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC7->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE7->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString = edtTP7->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC7->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE7->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString = edtTC7->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString = edtA7->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString = edtG7->Text.c_str();
			DM1->cdsScoutAtleta2->ApplyUpdates(0);
			DM1->cdsScoutAtleta2->Refresh();
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 8)
		{
			DM1->cdsScoutAtleta2->Edit();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC8->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE8->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString = edtTP8->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC8->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE8->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString = edtTC8->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString = edtA8->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString = edtG8->Text.c_str();
			DM1->cdsScoutAtleta2->ApplyUpdates(0);
			DM1->cdsScoutAtleta2->Refresh();
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 9)
		{
			DM1->cdsScoutAtleta2->Edit();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC9->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE9->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString = edtTP9->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC9->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE9->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString = edtTC9->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString = edtA9->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString = edtG9->Text.c_str();
			DM1->cdsScoutAtleta2->ApplyUpdates(0);
			DM1->cdsScoutAtleta2->Refresh();
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 10)
		{
			DM1->cdsScoutAtleta2->Edit();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC10->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE10->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString = edtTP10->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC10->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE10->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString = edtTC10->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString = edtA10->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString = edtG10->Text.c_str();
			DM1->cdsScoutAtleta2->ApplyUpdates(0);
			DM1->cdsScoutAtleta2->Refresh();
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 11)
		{
			DM1->cdsScoutAtleta2->Edit();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC11->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE11->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString = edtTP11->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC11->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE11->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString = edtTC11->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString = edtA11->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString = edtG11->Text.c_str();
			DM1->cdsScoutAtleta2->ApplyUpdates(0);
			DM1->cdsScoutAtleta2->Refresh();
			DM1->cdsScoutAtleta2->Next();
		}
		if (i == 12)
		{
			DM1->cdsScoutAtleta2->Edit();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesCertos_Scout")->AsString = edtPC12->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalPassesErrados_Scout")->AsString = edtPE12->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Total_Passes_Scout")->AsString = edtTP12->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesCertos_Scout")->AsString = edtCC12->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutesErrados_Scout")->AsString = edtCE12->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("TotalChutes_Scout")->AsString = edtTC12->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Assistencias_Scout")->AsString = edtA12->Text.c_str();
			DM1->cdsScoutAtleta2->FieldByName("Gols_Scout")->AsString = edtG12->Text.c_str();
			DM1->cdsScoutAtleta2->ApplyUpdates(0);
			DM1->cdsScoutAtleta2->Refresh();
			DM1->cdsScoutAtleta2->Next();
		}
	}
	//GUARDANDO DADOS EDITADOS REFERENTES AO SCOUT TOTAL DA PARTIDA
	DM1->cdsScoutPartida2->FieldByName("TotalPassesCertos_Scout")->AsString = edtPCTotal->Text.c_str();
	DM1->cdsScoutPartida2->FieldByName("TotalPasseseRRADOS_Scout")->AsString = edtPETotal->Text.c_str();
	DM1->cdsScoutPartida2->FieldByName("TotalPasses_Scout")->AsString = edtTPTotal->Text.c_str();
	DM1->cdsScoutPartida2->FieldByName("TotalChutesCertos_Scout")->AsString = edtCCTotal->Text.c_str();
	DM1->cdsScoutPartida2->FieldByName("TotalChutesErrados_Scout")->AsString = edtCETotal->Text.c_str();
	DM1->cdsScoutPartida2->FieldByName("TotalChutes_Scout")->AsString = edtTCTotal->Text.c_str();
	DM1->cdsScoutPartida2->FieldByName("TotalAssistencias_Scout")->AsString = edtATotal->Text.c_str();
	//edtGTotal->Text = edtGolsPro->Text;
	DM1->cdsScoutPartida2->ApplyUpdates(0);
	DM1->cdsScoutPartida2->Refresh();
	ShowMessage("Edição de Partida/Scout realizada com sucesso!");
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditaPartida::btnBuscarTecnicoClick(TObject *Sender)
{
frmBuscaPartida = new TfrmBuscaPartida(Application);
frmBuscaPartida->ShowModal();
delete frmBuscaPartida;
}
//---------------------------------------------------------------------------
