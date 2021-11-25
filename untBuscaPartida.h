//---------------------------------------------------------------------------

#ifndef untBuscaPartidaH
#define untBuscaPartidaH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "DM.h"
#include <Vcl.Buttons.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include "untEditaPartida.h"
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmBuscaPartida : public TForm
{
__published:	// IDE-managed Components
	TBitBtn *btnSelecionar;
	TBitBtn *btnFechar;
	TDBGrid *DBGrid1;
	TLabeledEdit *edtFiltroAdversario;
	TLabeledEdit *edtFiltroLocalPartida;
	TLabeledEdit *edtFiltroDataPartida;
	void __fastcall btnFecharClick(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall edtFiltroAdversarioChange(TObject *Sender);
	void __fastcall edtFiltroLocalPartidaChange(TObject *Sender);
	void __fastcall edtFiltroDataPartidaChange(TObject *Sender);
	void __fastcall btnSelecionarClick(TObject *Sender);
	void __fastcall DBGrid1DblClick(TObject *Sender);
private:	// User declarations
public:
	int NAtletas;
	// User declarations
	__fastcall TfrmBuscaPartida(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmBuscaPartida *frmBuscaPartida;
//---------------------------------------------------------------------------
#endif
