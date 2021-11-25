//---------------------------------------------------------------------------

#ifndef untBuscaAtletaH
#define untBuscaAtletaH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "DM.h"
#include "untBuscaEditaAtleta.h"
#include <Vcl.Buttons.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
#include "untCadAtleta.h"
//---------------------------------------------------------------------------
class TfrmBuscaAtleta : public TForm
{
__published:	// IDE-managed Components
	TLabeledEdit *edtFiltro;
	TBitBtn *btnSelecionar;
	TBitBtn *btnFechar;
	TDBGrid *DBGridAtletas;
	void __fastcall btnFecharClick(TObject *Sender);
	void __fastcall btnNovoClick(TObject *Sender);
	void __fastcall edtFiltroChange(TObject *Sender);
	void __fastcall btnSelecionarClick(TObject *Sender);
	void __fastcall DBGridAtletasDblClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmBuscaAtleta(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmBuscaAtleta *frmBuscaAtleta;
//---------------------------------------------------------------------------
#endif
