//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untAlteraTecnico.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmAlteraTecnico *frmAlteraTecnico;
//---------------------------------------------------------------------------
__fastcall TfrmAlteraTecnico::TfrmAlteraTecnico(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmAlteraTecnico::btnFecharClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAlteraTecnico::edtFiltroChange(TObject *Sender)
{
DM1->cdsTreinador->Filtered = false;
DM1->cdsTreinador->Filter = "Nome_Treinador LIKE" + QuotedStr("%"+edtFiltro->Text+"%");
DM1->cdsTreinador->Filtered = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmAlteraTecnico::FormShow(TObject *Sender)
{
DM1->cdsTreinador->Active = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmAlteraTecnico::DBGridTecnicosDblClick(TObject *Sender)
{
frmBuscaEditaEquipe->edtTreinador->Text = DM1->cdsTreinador->FieldByName("Nome_Treinador")->AsString;
frmBuscaEditaEquipe->codTecEditado = DM1->cdsTreinador->FieldByName("Cod_Treinador")->AsString;
Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAlteraTecnico::btnSelecionarClick(TObject *Sender)
{
frmBuscaEditaEquipe->edtTreinador->Text = DM1->cdsTreinador->FieldByName("Nome_Treinador")->AsString;
frmBuscaEditaEquipe->codTecEditado = DM1->cdsTreinador->FieldByName("Cod_Treinador")->AsString;
Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAlteraTecnico::btnNovoClick(TObject *Sender)
{
frmCadTecnico = new TfrmCadTecnico(Application);
frmCadTecnico->ShowModal();
delete frmCadTecnico;
}
//---------------------------------------------------------------------------

void __fastcall TfrmAlteraTecnico::FormClose(TObject *Sender, TCloseAction &Action)

{
//DM1->cdsTreinador->Active = false;
}
//---------------------------------------------------------------------------

