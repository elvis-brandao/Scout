//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untBuscaEquipe.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmBuscaEquipe *frmBuscaEquipe;
//---------------------------------------------------------------------------
__fastcall TfrmBuscaEquipe::TfrmBuscaEquipe(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaEquipe::FormShow(TObject *Sender)
{
DM1->cdsTime->Active = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEquipe::btnFecharClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaEquipe::edtFiltroChange(TObject *Sender)
{
DM1->cdsTime->Filtered = false;
DM1->cdsTime->Filter = "Nome_Time LIKE" + QuotedStr("%"+edtFiltro->Text+"%");
DM1->cdsTime->Filtered = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEquipe::DBGridTecnicosDblClick(TObject *Sender)
{
DM1->SQLQAtleta->SQL->Clear();
DM1->SQLQAtleta->SQL->Add("SELECT * FROM tbatleta WHERE tbatleta.Cod_Time_Atleta = " + DM1->cdsTime->FieldByName("Cod_Time")->AsString);
DM1->SQLQAtleta->Open();
DM1->cdsAtleta2->Active = true;
DM1->cdsAtleta2->Refresh();

frmBuscaEditaEquipe->edtNome->Text = DM1->cdsTime->FieldByName("Nome_Time")->AsString;
if(DM1->cdsTime->FieldByName("Cod_Treinador")->IsNull == true)
	frmBuscaEditaEquipe->edtTreinador->Text = "SEM TREINADOR";
else
{
	DM1->SQLQTreinador->SQL->Clear();
	DM1->SQLQTreinador->SQL->Add("SELECT * FROM tbtreinador");
	DM1->SQLQTreinador->SQL->Add("WHERE tbtreinador.Cod_Treinador = ");
	DM1->SQLQTreinador->SQL->Add(DM1->cdsTime->FieldByName("Cod_Treinador")->AsString);
	DM1->SQLQTreinador->Open();
	DM1->cdsTreinador2->Active = true;
	DM1->cdsTreinador2->Refresh();
	frmBuscaEditaEquipe->edtTreinador->Text = DM1->cdsTreinador2->FieldByName("Nome_Treinador")->AsString;
}
frmBuscaEditaEquipe->imgEscudo->Picture->LoadFromFile(DM1->cdsTime->FieldByName("Foto_Time")->AsString);

frmBuscaEditaEquipe->DBNavigator1->SetFocus();
Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEquipe::btnSelecionarClick(TObject *Sender)
{
DM1->SQLQAtleta->SQL->Clear();
DM1->SQLQAtleta->SQL->Add("SELECT * FROM tbatleta WHERE tbatleta.Cod_Time_Atleta = " + DM1->cdsTime->FieldByName("Cod_Time")->AsString);
DM1->SQLQAtleta->Open();
DM1->cdsAtleta2->Active = true;
DM1->cdsAtleta2->Refresh();

frmBuscaEditaEquipe->edtNome->Text = DM1->cdsTime->FieldByName("Nome_Time")->AsString;
if(DM1->cdsTime->FieldByName("Cod_Treinador")->IsNull == true)
	frmBuscaEditaEquipe->edtTreinador->Text = "SEM TREINADOR";
else
{
	DM1->SQLQTreinador->SQL->Clear();
	DM1->SQLQTreinador->SQL->Add("SELECT * FROM tbtreinador");
	DM1->SQLQTreinador->SQL->Add("WHERE tbtreinador.Cod_Treinador = ");
	DM1->SQLQTreinador->SQL->Add(DM1->cdsTime->FieldByName("Cod_Treinador")->AsString);
	DM1->SQLQTreinador->Open();
	DM1->cdsTreinador2->Active = true;
	DM1->cdsTreinador2->Refresh();
	frmBuscaEditaEquipe->edtTreinador->Text = DM1->cdsTreinador2->FieldByName("Nome_Treinador")->AsString;
}
frmBuscaEditaEquipe->imgEscudo->Picture->LoadFromFile(DM1->cdsTime->FieldByName("Foto_Time")->AsString);

frmBuscaEditaEquipe->DBNavigator1->SetFocus();
Close();
}
//---------------------------------------------------------------------------


