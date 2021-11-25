//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untCadAtleta.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmCadAtleta *frmCadAtleta;

UnicodeString nomeFotoAtleta;
//---------------------------------------------------------------------------
__fastcall TfrmCadAtleta::TfrmCadAtleta(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadAtleta::FormShow(TObject *Sender)
{
DM1->cdsAtleta->Active = true;
imgAtleta->Picture->LoadFromFile("\semfoto.jpg");
DM1->cdsAtleta->Last();
if (DM1->cdsAtleta->FieldByName("Cod_Atleta")->AsString == "")
{
	nomeFotoAtleta = "1.jpg";
}
else
{
	nomeFotoAtleta = IntToStr(StrToInt(DM1->cdsAtleta->FieldByName("Cod_Atleta")->AsString) + 1) + ".jpg";
}

dtpNascimento->Date = dtpNascimento->Date.CurrentDate();
String ano_nascimento = dtpNascimento->Date.DateString();
String ano_atual = dtpNascimento->Date.CurrentDate();
ano_nascimento = ano_nascimento.Delete0(0, 6);
ano_atual = ano_atual.Delete0(0,6);
int idade = StrToInt(ano_atual) - StrToInt(ano_nascimento);
edtIdade->Text = idade;

edtNome->SetFocus();
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadAtleta::btnFecharClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadAtleta::btnCancelarClick(TObject *Sender)
{
DM1->cdsAtleta->Cancel(); //cancela a operação no cdsTreinador
//Limpa os dados
edtNome->Clear();
edtRG->Clear();
edtIdade->Text = "0";
dtpNascimento->Date.CurrentDate();
imgAtleta->Picture->LoadFromFile("\semfoto.jpg");
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadAtleta::dtpNascimentoChange(TObject *Sender)
{
String ano_nascimento = dtpNascimento->Date.DateString();
String ano_atual = dtpNascimento->Date.CurrentDate();
ano_nascimento = ano_nascimento.Delete0(0, 6);
ano_atual = ano_atual.Delete0(0,6);
int idade = StrToInt(ano_atual) - StrToInt(ano_nascimento);
edtIdade->Text = idade;
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadAtleta::btnConfirmarClick(TObject *Sender)
{
//VALIDAÇÃO DOS CAMPOS
if (edtNome->Text == "" || edtRG->Text == "")
{
	MessageBoxA(NULL, "Favor preencher os campos Nome e RG!", "Cadastro de Atleta", MB_OK);
	edtNome->SetFocus();
}
else
{
	try
	{
		DM1->cdsAtleta->Append();
		DM1->cdsAtleta->FieldByName("Nome_Atleta")->AsString = edtNome->Text;
		DM1->cdsAtleta->FieldByName("RG_Atleta")->AsString = edtRG->Text;
		DM1->cdsAtleta->FieldByName("Idade_Atleta")->AsString = edtIdade->Text;
		DM1->cdsAtleta->FieldByName("Foto_Atleta")->AsString = "FOTOS\\\\ATLETA\\\\" + nomeFotoAtleta;
		imgAtleta->Picture->SaveToFile("\FOTOS\\ATLETA\\" + nomeFotoAtleta);
		dtpNascimento->Format = "yyyy/dd/MM";
		DM1->cdsAtleta->FieldByName("DataNascimento_Atleta")->AsString = dtpNascimento->Date.DateString();
		dtpNascimento->Format = "";
		DM1->cdsAtleta->ApplyUpdates(0);
		DM1->cdsAtleta->Refresh();
		MessageBoxA(NULL, "Informações salvas com sucesso!", "Cadastro de Atleta", MB_OK);
		edtNome->Clear();
		edtRG->Clear();
		edtIdade->Text = "0";
		dtpNascimento->Date.CurrentDate();
		imgAtleta->Picture->LoadFromFile("\semfoto.jpg");
	}
	catch (Exception& E)
	{
		DM1->cdsAtleta->Cancel(); //cancela a operação
		//Limpa os dados
		DM1->cdsAtleta->Refresh();
//		edtNome->Clear();
//		edtRG->Clear();
//		edtIdade->Text = "0";
//		dtpNascimento->Date.CurrentDate();
//		imgAtleta->Picture->LoadFromFile("\semfoto.jpg");
		ShowMessage("Alguem já cadastrado com esse RG!\n"
					"Verifique os dados e tente novamente...");
		edtRG->Clear();
		edtRG->SetFocus();
	}
}
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadAtleta::btnBuscarClick(TObject *Sender)
{
if (OPD1->Execute())
{
imgAtleta->Picture->LoadFromFile(OPD1->FileName);
DM1->cdsAtleta->Last();
if (DM1->cdsAtleta->FieldByName("Cod_Atleta")->AsString == "")
{
	nomeFotoAtleta = "1.jpg";
}
else
{
	nomeFotoAtleta = IntToStr(StrToInt(DM1->cdsAtleta->FieldByName("Cod_Atleta")->AsString) + 1) + ".jpg";
}
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmCadAtleta::FormClose(TObject *Sender, TCloseAction &Action)
{
DM1->cdsAtleta->Active = false;
}
//---------------------------------------------------------------------------

