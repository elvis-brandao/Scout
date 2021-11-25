//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untPrincipal.h"
#include "untSobre.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmPrincipal *frmPrincipal;
//---------------------------------------------------------------------------
__fastcall TfrmPrincipal::TfrmPrincipal(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TfrmPrincipal::btnTecnicoClick(TObject *Sender)
{
btnAtleta->Visible = false;
btnTecnico->Visible = false;
btnEquipe->Visible = false;
btnPartida->Visible = false;

frmCadTecnico = new TfrmCadTecnico(Application);
frmCadTecnico->ShowModal();
delete frmCadTecnico;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPrincipal::btnNovoClick(TObject *Sender)
{
if (btnAtleta->Visible == false && btnTecnico->Visible == false && btnEquipe->Visible == false && btnPartida->Visible == false)
{
	if (btnEAtleta->Visible == true)
	{
		btnEAtleta->Visible = false;
		btnETecnico->Visible = false;
		btnEEquipe->Visible = false;
		btnEPartida->Visible = false;
	}
	if (btnRPartida->Visible == true)
	{
		btnRPartida->Visible = false;
		btnRAtleta->Visible = false;
	}
	btnAtleta->Visible = true;
	btnTecnico->Visible = true;
	btnEquipe->Visible = true;
	btnPartida->Visible = true;
}
else
{
	btnAtleta->Visible = false;
	btnTecnico->Visible = false;
	btnEquipe->Visible = false;
	btnPartida->Visible = false;
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmPrincipal::imgFundoClick(TObject *Sender)
{
btnAtleta->Visible = false;
btnTecnico->Visible = false;
btnEquipe->Visible = false;
btnPartida->Visible = false;

btnEAtleta->Visible = false;
btnETecnico->Visible = false;
btnEEquipe->Visible = false;
btnEPartida->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPrincipal::btnEquipeClick(TObject *Sender)
{
btnAtleta->Visible = false;
btnTecnico->Visible = false;
btnEquipe->Visible = false;
btnPartida->Visible = false;

frmCadTime = new TfrmCadTime(Application);
frmCadTime->ShowModal();
delete frmCadTime;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPrincipal::btnAtletaClick(TObject *Sender)
{
btnAtleta->Visible = false;
btnTecnico->Visible = false;
btnEquipe->Visible = false;
btnPartida->Visible = false;

frmCadAtleta = new TfrmCadAtleta(Application);
frmCadAtleta->ShowModal();
delete frmCadAtleta;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPrincipal::btnPartidaClick(TObject *Sender)
{
btnAtleta->Visible = false;
btnTecnico->Visible = false;
btnEquipe->Visible = false;
btnPartida->Visible = false;

frmNovaPartida = new TfrmNovaPartida(Application);
frmNovaPartida->ShowModal();
delete frmNovaPartida;
}
//---------------------------------------------------------------------------
void __fastcall TfrmPrincipal::FormCreate(TObject *Sender)
{
imgFundo->Picture->LoadFromFile("\papelparede.jpg");
}
//---------------------------------------------------------------------------

void __fastcall TfrmPrincipal::btnBuscaEditaClick(TObject *Sender)
{
if (btnEAtleta->Visible == false && btnETecnico->Visible == false && btnEEquipe->Visible == false && btnEPartida->Visible == false)
{
	if (btnAtleta->Visible == true)
	{
		btnAtleta->Visible = false;
		btnTecnico->Visible = false;
		btnEquipe->Visible = false;
		btnPartida->Visible = false;
	}
	if (btnRPartida->Visible == true)
	{
		btnRPartida->Visible = false;
		btnRAtleta->Visible = false;
	}
	btnEAtleta->Visible = true;
	btnETecnico->Visible = true;
	btnEEquipe->Visible = true;
	btnEPartida->Visible = true;
}
else
{
	btnEAtleta->Visible = false;
	btnETecnico->Visible = false;
	btnEEquipe->Visible = false;
	btnEPartida->Visible = false;
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmPrincipal::btnETecnicoClick(TObject *Sender)
{
frmBuscaEditaTecnico = new TfrmBuscaEditaTecnico(Application);
frmBuscaEditaTecnico->ShowModal();
delete frmBuscaEditaTecnico;
}
//---------------------------------------------------------------------------
void __fastcall TfrmPrincipal::btnEEquipeClick(TObject *Sender)
{
frmBuscaEditaEquipe = new TfrmBuscaEditaEquipe(Application);
frmBuscaEditaEquipe->ShowModal();
delete frmBuscaEditaEquipe;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPrincipal::btnEAtletaClick(TObject *Sender)
{
frmBuscaEditaAtleta = new TfrmBuscaEditaAtleta(Application);
frmBuscaEditaAtleta->ShowModal();
delete frmBuscaEditaAtleta;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPrincipal::btnEPartidaClick(TObject *Sender)
{
frmEditaPartida = new TfrmEditaPartida(Application);
frmEditaPartida->ShowModal();
delete frmEditaPartida;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPrincipal::btnRelatoriosClick(TObject *Sender)
{
if (btnRPartida->Visible == false && btnRAtleta->Visible == false)
{
	if (btnAtleta->Visible == true)
	{
		btnAtleta->Visible = false;
		btnTecnico->Visible = false;
		btnPartida->Visible = false;
		btnPartida->Visible = false;
	}
	if (btnEAtleta->Visible == true)
	{
		btnEAtleta->Visible = false;
		btnETecnico->Visible = false;
		btnEEquipe->Visible = false;
		btnEPartida->Visible = false;
	}
	btnRPartida->Visible = true;
	btnRAtleta->Visible = true;
}
else
{
	btnRPartida->Visible = false;
	btnRAtleta->Visible = false;
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmPrincipal::btnRPartidaClick(TObject *Sender)
{
frmRelatorioPartida = new TfrmRelatorioPartida(Application);
frmRelatorioPartida->ShowModal();
delete frmRelatorioPartida;
}
//---------------------------------------------------------------------------

void __fastcall TfrmPrincipal::btnRAtletaClick(TObject *Sender)
{
/*frmRelatorioPartida = new TfrmRelatorioPartida(Application);
frmRelatorioPartida->ShowModal();
delete frmRelatorioPartida;*/
frmRelatorioAtleta = new TfrmRelatorioAtleta(Application);
frmRelatorioAtleta->ShowModal();
delete frmRelatorioAtleta;
}
//---------------------------------------------------------------------------
void __fastcall TfrmPrincipal::BitBtn1Click(TObject *Sender)
{
frmSobre = new TfrmSobre(Application);
frmSobre->ShowModal();
delete frmSobre;
}
//---------------------------------------------------------------------------

