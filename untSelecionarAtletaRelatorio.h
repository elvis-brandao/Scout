//---------------------------------------------------------------------------

#ifndef untSelecionarAtletaRelatorioH
#define untSelecionarAtletaRelatorioH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "DM.h"
#include "untRelatorioAtleta.h"
#include <Vcl.Buttons.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
//---------------------------------------------------------------------------
class TfrmSelecionarAtletaRelatorio : public TForm
{
__published:	// IDE-managed Components
	TDBGrid *DBGrid1;
	TLabel *lblNome;
	TBitBtn *btnRelatorioCompleto;
	void __fastcall btnRelatorioCompletoClick(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmSelecionarAtletaRelatorio(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmSelecionarAtletaRelatorio *frmSelecionarAtletaRelatorio;
//---------------------------------------------------------------------------
#endif
