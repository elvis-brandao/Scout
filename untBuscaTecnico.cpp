//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untBuscaTecnico.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmBuscaTecnico *frmBuscaTecnico;
//---------------------------------------------------------------------------
__fastcall TfrmBuscaTecnico::TfrmBuscaTecnico(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaTecnico::btnFecharClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaTecnico::FormShow(TObject *Sender)
{
DM1->cdsTreinador->Active = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaTecnico::btnNovoClick(TObject *Sender)
{
frmCadTecnico = new TfrmCadTecnico(Application);
frmCadTecnico->ShowModal();
delete frmCadTecnico;
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaTecnico::edtFiltroChange(TObject *Sender)
{
DM1->cdsTreinador->Filtered = false;
DM1->cdsTreinador->Filter = "Nome_Treinador LIKE" + QuotedStr("%"+edtFiltro->Text+"%");
DM1->cdsTreinador->Filtered = true;
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaTecnico::DBGridTecnicosDblClick(TObject *Sender)
{
frmBuscaEditaTecnico->edtNome->Text = DM1->cdsTreinador->FieldByName("Nome_Treinador")->AsString;
frmBuscaEditaTecnico->edtRG->Text = DM1->cdsTreinador->FieldByName("RG_Treinador")->AsString;
frmBuscaEditaTecnico->imgTecnico->Picture->LoadFromFile(DM1->cdsTreinador->FieldByName("Foto_Treinador")->AsString);
Close();
}
//---------------------------------------------------------------------------

