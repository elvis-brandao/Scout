//---------------------------------------------------------------------------

#ifndef untAddJogadorH
#define untAddJogadorH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include "DM.h"
#include <Vcl.Buttons.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include "untCadAtleta.h"
#include "untCadTime.h"
//---------------------------------------------------------------------------
class TfrmAddJogador : public TForm
{
__published:	// IDE-managed Components
	TLabeledEdit *edtFiltro;
	TBitBtn *btnSelecionar;
	TBitBtn *btnFechar;
	TBitBtn *btnNovo;
	TDBGrid *DBGridAtletas;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall edtFiltroChange(TObject *Sender);
	void __fastcall btnNovoClick(TObject *Sender);
	void __fastcall btnFecharClick(TObject *Sender);
	void __fastcall DBGridAtletasDblClick(TObject *Sender);
	void __fastcall btnSelecionarClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
			UnicodeString cod;
	__fastcall TfrmAddJogador(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmAddJogador *frmAddJogador;
//---------------------------------------------------------------------------
#endif
