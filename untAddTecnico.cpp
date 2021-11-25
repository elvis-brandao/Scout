//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untAddTecnico.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmAddTecnico *frmAddTecnico;
//---------------------------------------------------------------------------
__fastcall TfrmAddTecnico::TfrmAddTecnico(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmAddTecnico::FormShow(TObject *Sender)
{
DM1->cdsTreinador->Active = true;
}
//---------------------------------------------------------------------------
void __fastcall TfrmAddTecnico::edtFiltroChange(TObject *Sender)
{
DM1->cdsTreinador->Filtered = false;
DM1->cdsTreinador->Filter = "Nome_Treinador LIKE" + QuotedStr("%"+edtFiltro->Text+"%");
DM1->cdsTreinador->Filtered = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmAddTecnico::DBGridTecnicosDblClick(TObject *Sender)
{
frmCadTime->edtTreinador->Text = DM1->cdsTreinador->FieldByName("Nome_Treinador")->AsString;
frmCadTime->codTec = DM1->cdsTreinador->FieldByName("Cod_Treinador")->AsString;
Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAddTecnico::btnSelecionarClick(TObject *Sender)
{
frmCadTime->edtTreinador->Text = DM1->cdsTreinador->FieldByName("Nome_Treinador")->AsString;
frmCadTime->codTec = DM1->cdsTreinador->FieldByName("Cod_Treinador")->AsString;
Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAddTecnico::btnFecharClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAddTecnico::btnNovoClick(TObject *Sender)
{
frmCadTecnico = new TfrmCadTecnico(Application);
frmCadTecnico->ShowModal();
delete frmCadTecnico;
}
//---------------------------------------------------------------------------


