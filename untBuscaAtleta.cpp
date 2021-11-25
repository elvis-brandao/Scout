//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untBuscaAtleta.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmBuscaAtleta *frmBuscaAtleta;
//---------------------------------------------------------------------------
__fastcall TfrmBuscaAtleta::TfrmBuscaAtleta(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaAtleta::btnFecharClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaAtleta::btnNovoClick(TObject *Sender)
{
frmCadAtleta = new TfrmCadAtleta(Application);
frmCadAtleta->ShowModal();
delete frmCadAtleta;
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaAtleta::edtFiltroChange(TObject *Sender)
{
DM1->cdsAtleta->Filtered = false;
DM1->cdsAtleta->Filter = "Nome_Atleta LIKE" + QuotedStr("%"+edtFiltro->Text+"%");
DM1->cdsAtleta->Filtered = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaAtleta::btnSelecionarClick(TObject *Sender)
{
frmBuscaEditaAtleta->edtNome->Text = DM1->cdsAtleta->FieldByName("Nome_Atleta")->AsString;
frmBuscaEditaAtleta->edtRG->Text = DM1->cdsAtleta->FieldByName("RG_Atleta")->AsString;
frmBuscaEditaAtleta->edtIdade->Text = DM1->cdsAtleta->FieldByName("Idade_Atleta")->AsString;
frmBuscaEditaAtleta->dtpNascimento->Format = "yyyy/dd/MM";
frmBuscaEditaAtleta->dtpNascimento->Date = DM1->cdsAtleta->FieldByName("DataNascimento_Atleta")->AsDateTime;
frmBuscaEditaAtleta->dtpNascimento->Format = "";
frmBuscaEditaAtleta->imgAtleta->Picture->LoadFromFile(DM1->cdsAtleta->FieldByName("Foto_Atleta")->AsString);
Close();
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaAtleta::DBGridAtletasDblClick(TObject *Sender)
{
frmBuscaEditaAtleta->edtNome->Text = DM1->cdsAtleta->FieldByName("Nome_Atleta")->AsString;
frmBuscaEditaAtleta->edtRG->Text = DM1->cdsAtleta->FieldByName("RG_Atleta")->AsString;
frmBuscaEditaAtleta->edtIdade->Text = DM1->cdsAtleta->FieldByName("Idade_Atleta")->AsString;
frmBuscaEditaAtleta->dtpNascimento->Format = "yyyy/dd/MM";
frmBuscaEditaAtleta->dtpNascimento->Date = DM1->cdsAtleta->FieldByName("DataNascimento_Atleta")->AsDateTime;
frmBuscaEditaAtleta->dtpNascimento->Format = "";
frmBuscaEditaAtleta->imgAtleta->Picture->LoadFromFile(DM1->cdsAtleta->FieldByName("Foto_Atleta")->AsString);
Close();
}
//---------------------------------------------------------------------------
