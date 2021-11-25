//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untSelecionarAtletaRelatorio.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmSelecionarAtletaRelatorio *frmSelecionarAtletaRelatorio;
//---------------------------------------------------------------------------
__fastcall TfrmSelecionarAtletaRelatorio::TfrmSelecionarAtletaRelatorio(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmSelecionarAtletaRelatorio::btnRelatorioCompletoClick(TObject *Sender)

{
frmRelatorioAtleta->codAtleta = DM1->cdsAtleta->FieldByName("Cod_Atleta")->AsString;
Close();
}
//---------------------------------------------------------------------------
void __fastcall TfrmSelecionarAtletaRelatorio::FormShow(TObject *Sender)
{
DM1->cdsAtleta->Active = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSelecionarAtletaRelatorio::FormClose(TObject *Sender, TCloseAction &Action)
{
DM1->cdsAtleta->Active = false;
}
//---------------------------------------------------------------------------

