//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untAddJogador.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmAddJogador *frmAddJogador;
//---------------------------------------------------------------------------
__fastcall TfrmAddJogador::TfrmAddJogador(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmAddJogador::FormShow(TObject *Sender)
{
DM1->cdsAtleta->Active = true;
DM1->cdsTime->Active = true;
}
//---------------------------------------------------------------------------
void __fastcall TfrmAddJogador::edtFiltroChange(TObject *Sender)
{
DM1->cdsAtleta->Filtered = false;
DM1->cdsAtleta->Filter = "Nome_Atleta LIKE" + QuotedStr("%"+edtFiltro->Text+"%");
DM1->cdsAtleta->Filtered = true;
}
//---------------------------------------------------------------------------
void __fastcall TfrmAddJogador::btnNovoClick(TObject *Sender)
{
frmCadAtleta = new TfrmCadAtleta(Application);
frmCadAtleta->ShowModal();
delete frmCadAtleta;
}
//---------------------------------------------------------------------------
void __fastcall TfrmAddJogador::btnFecharClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------
void __fastcall TfrmAddJogador::DBGridAtletasDblClick(TObject *Sender)
{
DM1->cdsAtleta->Edit();
DM1->cdsAtleta->FieldByName("Cod_Time_Atleta")->AsString = cod;
DM1->cdsAtleta->ApplyUpdates(0);

DM1->SQLQAtleta->Open();
DM1->cdsAtleta2->Refresh();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAddJogador::btnSelecionarClick(TObject *Sender)
{
DM1->cdsAtleta->Edit();
DM1->cdsAtleta->FieldByName("Cod_Time_Atleta")->AsString = cod;
DM1->cdsAtleta->ApplyUpdates(0);

DM1->SQLQAtleta->Open();
DM1->cdsAtleta2->Refresh();
}
//---------------------------------------------------------------------------

