//---------------------------------------------------------------------------

#ifndef untPrincipalH
#define untPrincipalH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Imaging.jpeg.hpp>
#include <Vcl.Buttons.hpp>
#include "untCadTecnico.h"
#include "DM.h"
#include "untCadTime.h"
#include "untCadAtleta.h"
#include "untBuscaEditaTecnico.h"
#include "untBuscaEditaEquipe.h"
#include "untBuscaEditaAtleta.h"
#include "untNovaPartida.h"
#include "untEditaPartida.h"
#include "untRelatorioPartida.h"
#include "untRelatorioAtleta.h"
//---------------------------------------------------------------------------
class TfrmPrincipal : public TForm
{
__published:	// IDE-managed Components
	TImage *imgFundo;
	TBitBtn *btnNovo;
	TBitBtn *btnTecnico;
	TBitBtn *btnEquipe;
	TBitBtn *btnAtleta;
	TBitBtn *btnPartida;
	TBitBtn *btnBuscaEdita;
	TBitBtn *btnEAtleta;
	TBitBtn *btnEEquipe;
	TBitBtn *btnEPartida;
	TBitBtn *btnETecnico;
	TBitBtn *btnRelatorios;
	TBitBtn *btnRPartida;
	TBitBtn *btnRAtleta;
	TBitBtn *BitBtn1;
	void __fastcall btnTecnicoClick(TObject *Sender);
	void __fastcall btnNovoClick(TObject *Sender);
	void __fastcall imgFundoClick(TObject *Sender);
	void __fastcall btnEquipeClick(TObject *Sender);
	void __fastcall btnAtletaClick(TObject *Sender);
	void __fastcall btnPartidaClick(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall btnBuscaEditaClick(TObject *Sender);
	void __fastcall btnETecnicoClick(TObject *Sender);
	void __fastcall btnEEquipeClick(TObject *Sender);
	void __fastcall btnEAtletaClick(TObject *Sender);
	void __fastcall btnEPartidaClick(TObject *Sender);
	void __fastcall btnRelatoriosClick(TObject *Sender);
	void __fastcall btnRPartidaClick(TObject *Sender);
	void __fastcall btnRAtletaClick(TObject *Sender);
	void __fastcall BitBtn1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmPrincipal(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmPrincipal *frmPrincipal;
//---------------------------------------------------------------------------
#endif
