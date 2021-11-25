//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
//---------------------------------------------------------------------------
#include <Vcl.Styles.hpp>
#include <Vcl.Themes.hpp>
USEFORM("untCadTime.cpp", frmCadTime);
USEFORM("untEditaPartida.cpp", frmEditaPartida);
USEFORM("untNovaPartida.cpp", frmNovaPartida);
USEFORM("untBuscaTecnico.cpp", frmBuscaTecnico);
USEFORM("untCadAtleta.cpp", frmCadAtleta);
USEFORM("untCadTecnico.cpp", frmCadTecnico);
USEFORM("untSelecionarAtletaRelatorio.cpp", frmSelecionarAtletaRelatorio);
USEFORM("untSelecionaTime.cpp", frmSelecionaTime);
USEFORM("untPrincipal.cpp", frmPrincipal);
USEFORM("untRelatorioAtleta.cpp", frmRelatorioAtleta);
USEFORM("untRelatorioPartida.cpp", frmRelatorioPartida);
USEFORM("untAddJogador.cpp", frmAddJogador);
USEFORM("untAddTecnico.cpp", frmAddTecnico);
USEFORM("untAlteraTecnico.cpp", frmAlteraTecnico);
USEFORM("DM.cpp", DM1); /* TDataModule: File Type */
USEFORM("untBuscaEditaTecnico.cpp", frmBuscaEditaTecnico);
USEFORM("untBuscaEquipe.cpp", frmBuscaEquipe);
USEFORM("untBuscaPartida.cpp", frmBuscaPartida);
USEFORM("untBuscaAtleta.cpp", frmBuscaAtleta);
USEFORM("untBuscaEditaAtleta.cpp", frmBuscaEditaAtleta);
USEFORM("untBuscaEditaEquipe.cpp", frmBuscaEditaEquipe);
USEFORM("untSobre.cpp", frmSobre);
//---------------------------------------------------------------------------
int WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
	try
	{
		Application->Initialize();
		Application->MainFormOnTaskBar = true;
		Application->CreateForm(__classid(TfrmPrincipal), &frmPrincipal);
		Application->CreateForm(__classid(TDM1), &DM1);
		Application->CreateForm(__classid(TfrmCadTecnico), &frmCadTecnico);
		Application->CreateForm(__classid(TfrmCadTime), &frmCadTime);
		Application->CreateForm(__classid(TfrmAddTecnico), &frmAddTecnico);
		Application->CreateForm(__classid(TfrmAddJogador), &frmAddJogador);
		Application->CreateForm(__classid(TfrmCadAtleta), &frmCadAtleta);
		Application->CreateForm(__classid(TfrmBuscaEditaTecnico), &frmBuscaEditaTecnico);
		Application->CreateForm(__classid(TfrmBuscaTecnico), &frmBuscaTecnico);
		Application->CreateForm(__classid(TfrmBuscaEditaEquipe), &frmBuscaEditaEquipe);
		Application->CreateForm(__classid(TfrmBuscaEquipe), &frmBuscaEquipe);
		Application->CreateForm(__classid(TfrmAlteraTecnico), &frmAlteraTecnico);
		Application->CreateForm(__classid(TfrmBuscaEditaAtleta), &frmBuscaEditaAtleta);
		Application->CreateForm(__classid(TfrmBuscaAtleta), &frmBuscaAtleta);
		Application->CreateForm(__classid(TfrmNovaPartida), &frmNovaPartida);
		Application->CreateForm(__classid(TfrmSelecionaTime), &frmSelecionaTime);
		Application->CreateForm(__classid(TfrmEditaPartida), &frmEditaPartida);
		Application->CreateForm(__classid(TfrmBuscaPartida), &frmBuscaPartida);
		Application->CreateForm(__classid(TfrmRelatorioPartida), &frmRelatorioPartida);
		Application->CreateForm(__classid(TfrmRelatorioAtleta), &frmRelatorioAtleta);
		Application->CreateForm(__classid(TfrmSelecionarAtletaRelatorio), &frmSelecionarAtletaRelatorio);
		Application->CreateForm(__classid(TfrmSobre), &frmSobre);
		Application->Run();
	}
	catch (Exception &exception)
	{
		Application->ShowException(&exception);
	}
	catch (...)
	{
		try
		{
			throw Exception("");
		}
		catch (Exception &exception)
		{
			Application->ShowException(&exception);
		}
	}
	return 0;
}
//---------------------------------------------------------------------------
