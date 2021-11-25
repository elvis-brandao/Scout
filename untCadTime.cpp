//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untCadTime.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmCadTime *frmCadTime;

UnicodeString nomeFotoTime;
//---------------------------------------------------------------------------
__fastcall TfrmCadTime::TfrmCadTime(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadTime::FormShow(TObject *Sender)
{
DM1->cdsTime->Active = true;
DM1->cdsAtleta->Active = true;
DM1->cdsTreinador->Active = true;
imgEscudo->Picture->LoadFromFile("\semfoto.jpg");
DM1->cdsTime->Last();
if (DM1->cdsTime->FieldByName("Cod_Time")->AsString == "")
{
	nomeFotoTime = "1.jpg";
}
else
{
	nomeFotoTime = IntToStr(StrToInt(DM1->cdsTime->FieldByName("Cod_Time")->AsString) + 1) + ".jpg";
}
edtNome->SetFocus();
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadTime::btnBuscarClick(TObject *Sender)
{
if (OPD1->Execute())
{
imgEscudo->Picture->LoadFromFile(OPD1->FileName);
DM1->cdsTime->Last();
if (DM1->cdsTime->FieldByName("Cod_Time")->AsString == "")
{
	nomeFotoTime = "1.jpg";
}
else
{
	nomeFotoTime = IntToStr(StrToInt(DM1->cdsTime->FieldByName("Cod_Time")->AsString) + 1) + ".jpg";
}
}
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadTime::btnFecharClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadTime::btnCancelarClick(TObject *Sender)
{
DM1->cdsTime->Cancel(); //cancela a operação no cdsTreinador
//Limpa os dados
edtNome->Clear();
edtTreinador->Clear();
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadTime::btnSalvarTimeClick(TObject *Sender)
{
//VALIDAÇÃO DOS CAMPOS
if (edtNome->Text == "" || edtTreinador->Text == "")
{
	MessageBoxA(NULL, "Favor preencher os campos Nome e Técnico do Time!", "Cadastro de Time", MB_OK);
	edtNome->SetFocus();
}
else
{
	try
	{
		DM1->cdsTime->Append();
		DM1->cdsTime->FieldByName("Nome_Time")->AsString = edtNome->Text.c_str();
		DM1->cdsTime->FieldByName("Foto_Time")->AsString = "FOTOS\\\\TIME\\\\" + nomeFotoTime;
		DM1->cdsTime->FieldByName("Cod_Treinador")->AsString = codTec;
		imgEscudo->Picture->SaveToFile("\FOTOS\\TIME\\" + nomeFotoTime);
		DM1->cdsTime->ApplyUpdates(0);
		DM1->cdsTime->Refresh();

		DM1->SQLQAtleta->SQL->Clear();
		DM1->SQLQAtleta->SQL->Add("SELECT * FROM tbatleta WHERE tbatleta.Cod_Time_Atleta = " + DM1->cdsTime->FieldByName("Cod_Time")->AsString);
		DM1->SQLQAtleta->Open();
		DM1->cdsAtleta2->Active = true;
		DM1->cdsAtleta2->Refresh();

		TMsgDlgBtn myYes = mbYes;
		TMsgDlgBtn myNo = mbNo;
		if(MessageDlg("Informações salvas com sucesso! \nAdicionar jogadores ao elenco?", mtConfirmation, TMsgDlgButtons() << myYes << myNo,0) == mrYes)
		{
			DM1->cdsAtleta->Active = true;
			DM1->cdsTime->Active = true;
			btnSalvarTime->Enabled = false;
			btnCancelar->Enabled = false;
			btnAddJogador->Enabled = true;
			btnSalvarElenco->Enabled = true;
			btnAddJogador->Click();
		}
		else
		{
			DM1->cdsAtleta2->Active = false;
			edtNome->Clear();
			edtTreinador->Clear();
			btnSalvarTime->Enabled = true;
			btnCancelar->Enabled = true;
			btnAddJogador->Enabled = false;
			btnSalvarElenco->Enabled = false;
			imgEscudo->Picture->LoadFromFile("\semfoto.jpg");
			ShowMessage("Você poderá acicionar jogadores posteriormente \nno menu Editar->Time");
		}
	}
	catch (Exception& E)
	{
		DM1->cdsTime->Cancel(); //cancela a operação
		//Limpa os dados
		DM1->cdsTime->Refresh();
		edtNome->Clear();
		edtTreinador->Clear();
		btnSalvarTime->Enabled = true;
		btnCancelar->Enabled = true;
		btnAddJogador->Enabled = false;
		btnSalvarElenco->Enabled = false;
		imgEscudo->Picture->LoadFromFile("\semfoto.jpg");
		ShowMessage(E.Message);
	}
}
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadTime::btnAddTreinadorClick(TObject *Sender)
{
frmAddTecnico = new TfrmAddTecnico(Application);
frmAddTecnico->ShowModal();
delete frmAddTecnico;
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadTime::btnLimpaCampoClick(TObject *Sender)
{
edtTreinador->Clear();
}
//---------------------------------------------------------------------------

void __fastcall TfrmCadTime::btnAddJogadorClick(TObject *Sender)
{
frmAddJogador = new TfrmAddJogador(Application);
frmAddJogador->cod = DM1->cdsTime->FieldByName("Cod_Time")->AsString;
frmAddJogador->ShowModal();
delete frmAddJogador;
}
//---------------------------------------------------------------------------
void __fastcall TfrmCadTime::btnSalvarElencoClick(TObject *Sender)
{
DM1->cdsAtleta2->Active = false;
btnSalvarTime->Enabled = true;
btnCancelar->Enabled = true;
btnAddJogador->Enabled = false;
btnSalvarElenco->Enabled = false;

MessageBoxA(NULL, "Elenco do time salvo com sucesso!", "Cadastro de Elenco", MB_OK);
edtNome->Clear();
edtTreinador->Clear();
imgEscudo->Picture->LoadFromFile("\semfoto.jpg");
DM1->cdsAtleta2->Active = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmCadTime::FormClose(TObject *Sender, TCloseAction &Action)
{
DM1->cdsTime->Active = false;
DM1->cdsAtleta->Active = false;
DM1->cdsTreinador->Active = false;
DM1->cdsAtleta2->Active = false;
}
//---------------------------------------------------------------------------

