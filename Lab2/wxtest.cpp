
#include "wx/wx.h"

class Aplikacija: public wxApp
{
    virtual bool OnInit();
};
class GlavniOkvir: public wxFrame
{
    public:
        GlavniOkvir(const wxString& title,
                const wxPoint& pos, const wxSize& size);
        void OnQuit(wxCommandEvent& event);
        void OnAbout(wxCommandEvent& event);
        DECLARE_EVENT_TABLE()
};
enum{ ID_Quit = 1,  ID_About,};
    BEGIN_EVENT_TABLE(GlavniOkvir, wxFrame)
    EVT_MENU(ID_Quit, GlavniOkvir::OnQuit)
    EVT_MENU(ID_About, GlavniOkvir::OnAbout)
    END_EVENT_TABLE()
    IMPLEMENT_APP(Aplikacija)
bool Aplikacija::OnInit()
{
    GlavniOkvir *frame = new GlavniOkvir( _("Glavni Program"),
            wxPoint(50, 50), wxSize(450,340) );
    frame->Show(true);
    SetTopWindow(frame);
    return true;
}
GlavniOkvir::GlavniOkvir(const wxString& title, const wxPoint& pos, const wxSize& size): wxFrame( NULL, -1, title, pos, size )
{
    wxMenu *menuFile = new wxMenu;
    menuFile->Append( ID_About, _("&O programu...") );
    menuFile->AppendSeparator();
    menuFile->Append( ID_Quit, _("I&zlaz") );
    wxMenuBar *menuBar = new wxMenuBar;
    menuBar->Append( menuFile, _("&Datoteka") );
    SetMenuBar( menuBar );
    CreateStatusBar();
    SetStatusText( _("Test biblioteke wxWidgets!") );
}
void GlavniOkvir::OnQuit(wxCommandEvent& WXUNUSED(event))
{
    Close(TRUE);
}
void GlavniOkvir::OnAbout(wxCommandEvent& WXUNUSED(event))
{ wxMessageBox( _("Ovo je primjer C++ sa wxWidgets bibliotekom"),
        _("O programu"), wxOK | wxICON_INFORMATION, this);
}
