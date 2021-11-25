//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "untBuscaEditaAtleta.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmBuscaEditaAtleta *frmBuscaEditaAtleta;

UnicodeString nomeFotoAtletaEditado;
//---------------------------------------------------------------------------
__fastcall TfrmBuscaEditaAtleta::TfrmBuscaEditaAtleta(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmBuscaEditaAtleta::FormShow(TObject *Sender)
{
DM1->cdsAtleta->Active = true;
DM1->cdsAtleta->First();
dtpNascimento->Date = dtpNascimento->Date.CurrentDate();
if(DM1->cdsAtleta->RecordCount != 0)
{
	edtNome->Text = DM1->cdsAtleta->FieldByName("Nome_Atleta")->AsString;
	edtRG->Text = DM1->cdsAtleta->FieldByName("RG_Atleta")->AsString;
	edtIdade->Text = DM1->cdsAtleta->FieldByName("Idade_Atleta")->AsString;
	dtpNascimento->Format = "yyyy/dd/MM";
	dtpNascimento->Date = DM1->cdsAtleta->FieldByName("DataNascimento_Atleta")->AsDateTime;
	dtpNascimento->Format = "";
	imgAtleta->Picture->LoadFromFile(DM1->cdsAtleta->FieldByName("Foto_Atleta")->AsString);
	DBNavigator1->SetFocus();
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaAtleta::DBNavigator1Click(TObject *Sender, TNavigateBtn Button)
{
if(DM1->cdsAtleta->RecordCount != 0)
{
	edtNome->Text = DM1->cdsAtleta->FieldByName("Nome_Atleta")->AsString;
	edtRG->Text = DM1->cdsAtleta->FieldByName("RG_Atleta")->AsString;
	edtIdade->Text = DM1->cdsAtleta->FieldByName("Idade_Atleta")->AsString;
	dtpNascimento->Format = "yyyy/dd/MM";
	dtpNascimento->Date = DM1->cdsAtleta->FieldByName("DataNascimento_Atleta")->AsDateTime;
	dtpNascimento->Format = "";
	imgAtleta->Picture->LoadFromFile(DM1->cdsAtleta->FieldByName("Foto_Atleta")->AsString);
	DBNavigator1->SetFocus();
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaAtleta::btnFecharClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaAtleta::btnExcluirClick(TObject *Sender)
{
if (DM1->cdsAtleta->RecordCount == 0)
{
	MessageBoxA(NULL, "Não há registros para excluir!", "Exclusão de Atleta", MB_OK);
}
else
{
	TMsgDlgBtn myYes = mbYes;
	TMsgDlgBtn myNo = mbNo;

	if(MessageDlg("Deletar registro ?", mtConfirmation, TMsgDlgButtons() << myYes << myNo,0) == mrYes)
	{
		DM1->cdsAtleta->Delete();
		DM1->cdsAtleta->ApplyUpdates(0);
		DM1->cdsAtleta->Refresh();
		if (DM1->cdsAtleta->RecordCount == 0)
		{
			edtNome->Clear();
			edtRG->Clear();
			edtIdade->Clear();
			dtpNascimento->Date = dtpNascimento->Date.CurrentDate();
			imgAtleta->Picture->LoadFromFile("\semfoto.jpg");
		}
		else
		{
			DM1->cdsAtleta->First();
			edtNome->Text = DM1->cdsAtleta->FieldByName("Nome_Atleta")->AsString;
			edtRG->Text = DM1->cdsAtleta->FieldByName("RG_Atleta")->AsString;
			edtIdade->Text = DM1->cdsAtleta->FieldByName("Idade_Atleta")->AsString;
			dtpNascimento->Format = "yyyy/dd/MM";
			dtpNascimento->Date = DM1->cdsAtleta->FieldByName("DataNascimento_Atleta")->AsDateTime;
			dtpNascimento->Format = "";
			imgAtleta->Picture->LoadFromFile(DM1->cdsAtleta->FieldByName("Foto_Atleta")->AsString);
			DBNavigator1->SetFocus();
		}
		MessageBoxA(NULL, "Registro excluido com sucesso!", "Exclusão de Técnico", MB_OK);
	}
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaAtleta::btnEditarClick(TObject *Sender)
{
if (DM1->cdsAtleta->RecordCount == 0)
{
	ShowMessage("Não há registros para edição !");
}
else
{
	DM1->cdsAtleta->Edit();
	DBNavigator1->Enabled = false;
	btnEditar->Enabled = false;
	btnBuscarAtleta->Enabled = false;
	btnBuscar->Enabled = true;
	btnConfirmar->Enabled = true;
	btnExcluir->Enabled = false;
	edtNome->ReadOnly = false;
	edtRG->ReadOnly = false;
	dtpNascimento->Enabled = true;
	nomeFotoAtletaEditado = DM1->cdsAtleta->FieldByName("Cod_Atleta")->AsString + ".jpg";
	edtNome->SetFocus();
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaAtleta::btnBuscarClick(TObject *Sender)
{
if (OPD1->Execute())
{
imgAtleta->Picture->LoadFromFile(OPD1->FileName);
nomeFotoAtletaEditado = DM1->cdsAtleta->FieldByName("Cod_Atleta")->AsString + ".jpg";
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaAtleta::btnConfirmarClick(TObject *Sender)
{
//VALIDAÇÃO DOS CAMPOS
if (edtNome->Text == "" || edtRG->Text == "")
{
	MessageBoxA(NULL, "Favor preencher os campos Nome e RG!", "Edição de Atleta", MB_OK);
	edtNome->SetFocus();
}
else
{
	try
	{
		DM1->cdsAtleta->FieldByName("Nome_Atleta")->AsString = edtNome->Text.c_str();
		DM1->cdsAtleta->FieldByName("RG_Atleta")->AsString = edtRG->Text.c_str();
		DM1->cdsAtleta->FieldByName("Idade_Atleta")->AsString = edtIdade->Text;
		DM1->cdsAtleta->FieldByName("Foto_Atleta")->AsString = "FOTOS\\\\ATLETA\\\\" + nomeFotoAtletaEditado;
		imgAtleta->Picture->SaveToFile("\FOTOS\\ATLETA\\" + nomeFotoAtletaEditado);
		dtpNascimento->Format = "yyyy/dd/MM";
		DM1->cdsAtleta->FieldByName("DataNascimento_Atleta")->AsString = dtpNascimento->Date.DateString();
		dtpNascimento->Format = "";
		DM1->cdsAtleta->ApplyUpdates(0);
		DM1->cdsAtleta->Refresh();

		DBNavigator1->Enabled = true;
		btnEditar->Enabled = true;
		btnBuscarAtleta->Enabled = true;
		btnBuscar->Enabled = false;
		btnConfirmar->Enabled = false;
		btnExcluir->Enabled = true;
		edtNome->ReadOnly = true;
		edtRG->ReadOnly = true;
		dtpNascimento->Enabled = false;

		MessageBoxA(NULL, "Informações salvas com sucesso!", "Edição de Atleta", MB_OK);
		DBNavigator1->SetFocus();
	}
	catch (Exception& E)
	{
		//DM1->cdsTreinador->Cancel(); //cancela a operação
		//Limpa os dados
		//DM1->cdsTreinador->Refresh();
		ShowMessage("Alguem já cadastrado com esse RG!\n"
					"Verifique os dados e tente novamente...");
		edtRG->Clear();
		edtRG->SetFocus();
	}
}
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaAtleta::dtpNascimentoChange(TObject *Sender)
{
String ano_nascimento = dtpNascimento->Date.DateString();
String ano_atual = dtpNascimento->Date.CurrentDate();
ano_nascimento = ano_nascimento.Delete0(0, 6);
ano_atual = ano_atual.Delete0(0,6);
int idade = StrToInt(ano_atual) - StrToInt(ano_nascimento);
edtIdade->Text = idade;
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaAtleta::btnBuscarAtletaClick(TObject *Sender)
{
frmBuscaAtleta = new TfrmBuscaAtleta(Application);
frmBuscaAtleta->ShowModal();
delete frmBuscaAtleta;
}
//---------------------------------------------------------------------------

void __fastcall TfrmBuscaEditaAtleta::FormClose(TObject *Sender, TCloseAction &Action)

{
DM1->cdsAtleta->Active = false;
}
//---------------------------------------------------------------------------

