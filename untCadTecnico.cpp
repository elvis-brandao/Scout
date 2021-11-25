//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untCadTecnico.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmCadTecnico *frmCadTecnico;

UnicodeString nomeFotoTecnico;
//---------------------------------------------------------------------------
__fastcall TfrmCadTecnico::TfrmCadTecnico(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadTecnico::FormShow(TObject *Sender)
{
DM1->cdsTreinador->Active = true;
imgTecnico->Picture->LoadFromFile("\semfoto.jpg");
DM1->cdsTreinador->Last();
if (DM1->cdsTreinador->FieldByName("Cod_Treinador")->AsString == "")
{
	nomeFotoTecnico = "1.jpg";
}
else
{
	nomeFotoTecnico = IntToStr(StrToInt(DM1->cdsTreinador->FieldByName("Cod_Treinador")->AsString) + 1) + ".jpg";
}
edtNome->SetFocus();
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadTecnico::btnBuscarClick(TObject *Sender)
{
if (OPD1->Execute())
{
imgTecnico->Picture->LoadFromFile(OPD1->FileName);
DM1->cdsTreinador->Last();
if (DM1->cdsTreinador->FieldByName("Cod_Treinador")->AsString == "")
{
	nomeFotoTecnico = "1.jpg";
}
else
{
	nomeFotoTecnico = IntToStr(StrToInt(DM1->cdsTreinador->FieldByName("Cod_Treinador")->AsString) + 1) + ".jpg";
}
}
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadTecnico::btnConfirmarClick(TObject *Sender)
{
//VALIDAÇÃO DOS CAMPOS
if (edtNome->Text == "" || edtRG->Text == "")
{
	MessageBoxA(NULL, "Favor preencher os campos Nome e RG!", "Cadastro de Técnico", MB_OK);
	edtNome->SetFocus();
}
else
{
	try
	{
		DM1->cdsTreinador->Append();
		DM1->cdsTreinador->FieldByName("Nome_Treinador")->AsString = edtNome->Text.c_str();
		DM1->cdsTreinador->FieldByName("RG_Treinador")->AsString = edtRG->Text.c_str();
		DM1->cdsTreinador->FieldByName("Foto_Treinador")->AsString = "FOTOS\\\\TREINADOR\\\\" + nomeFotoTecnico;
		imgTecnico->Picture->SaveToFile("\FOTOS\\TREINADOR\\" + nomeFotoTecnico);
		DM1->cdsTreinador->ApplyUpdates(0);
		DM1->cdsTreinador->Refresh();
		MessageBoxA(NULL, "Informações salvas com sucesso!", "Cadastro de Técnico", MB_OK);
		edtNome->Clear();
		edtRG->Clear();
		imgTecnico->Picture->LoadFromFile("\semfoto.jpg");
	}
	catch (Exception& E)
	{
		DM1->cdsTreinador->Cancel(); //cancela a operação
		//Limpa os dados
		DM1->cdsTreinador->Refresh();
//		edtNome->Clear();
//		edtRG->Clear();
//		imgTecnico->Picture->LoadFromFile("\semfoto.jpg");
		ShowMessage("Alguem já cadastrado com esse RG!\n"
					"Verifique os dados e tente novamente...");
		edtRG->Clear();
		edtRG->SetFocus();
	}

}
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadTecnico::btnCancelarClick(TObject *Sender)
{
DM1->cdsTreinador->Cancel(); //cancela a operação no cdsTreinador
//Limpa os dados
edtNome->Clear();
edtRG->Clear();
imgTecnico->Picture->LoadFromFile("\semfoto.jpg");
}
//---------------------------------------------------------------------------

void __fastcall TfrmCadTecnico::btnFecharClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmCadTecnico::FormClose(TObject *Sender, TCloseAction &Action)
{
DM1->cdsTreinador->Active = false;
}
//---------------------------------------------------------------------------

