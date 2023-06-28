#include <iostream>
#include "main.hpp"
#include <string.h>
#include <stdio.h>
#include <algorithm>
#include <array>
#include <sstream>



using namespace std;



int main(int argc, char *argv[])
{


    
    
    array<Byte,30000> Cells = {0};
    
    fill(begin(Cells),end(Cells),0);
    auto CellIter = Cells.begin();

    string InputString{};
    cout << "Commands : \n\n"
         << "/reset - reset memory\n\n"
         << "Terminal mode (Doesn't clear the memory after every command)\n"
         << "/tmode 1 - enable terminal mode\n"
         << "/tmode 0 - n\n\n"
         << "/memp - print first 10 memory cells\n\n" 
         << "/wrap - toogle wrapping (on by default)\n\n" 
         << "/exit - exit\n\n" << flush;

    bool isTerminalMode = false;
    do
    {
        

        cout << "YUF << ";
        
        getline(cin,InputString);
        
        

        ExecuteCommand(InputString, Cells, CellIter, isTerminalMode);
   
    } while(InputString != "/exit");

    
    return 0;


        



}
void ExecuteCommand(string Input, memory &Cells, memory::iterator &CellIter,bool &IsTerminalMode)
{
    static bool wrap = true;
    if(Input[0] == '/')
    {
        if(Input == "/reset")
        {
            ResetMemory(Cells, CellIter);
            cout << "Memory reset" << endl;
        }
        else if(Input == "/tmode 1")
            IsTerminalMode = true;
        else if(Input == "/tmode 0")
            IsTerminalMode = false;
        else if(Input == "/memp")
        {
            for(int i = 0; i < 10; ++i)
            {
                cout << (int)Cells[i] << " ";
            }
        }
        else if(Input == "/wrap")
        {
            wrap = !wrap;
        }
        else
        {
            cout << "Unknown command" << endl;
        }
    }
    else
    {
        
        DoAsBF(Input, Cells, CellIter, wrap);
        
        if(!IsTerminalMode)
            ResetMemory(Cells, CellIter);
    }
    cout << endl;

   
}
void ResetMemory(memory &Cells, memory::iterator& CellIter)
{
    fill(Cells.begin(),Cells.end(),(Byte)0);
    CellIter = Cells.begin();
}
void DoAsBF(string InputS, array<Byte,30000>& arr, array<Byte,30000>::iterator& ptr, bool &wrap)
{
    
    signed int NoMatchBrackets{0};
    for(auto Symbol = InputS.begin(); Symbol != InputS.end(); ++Symbol )
    {
        
        switch(*Symbol)
        {
            case '>':
                ++ptr;
                if(ptr == arr.end())
                    if(wrap)
                        ptr = arr.begin();
                    else
                    {
                        cerr << "exception: Program tried to move head past the last memory cell." << endl;
                        return;
                    }
                break;
            
            case '<':
                if(ptr == arr.begin())
                {
                    if(wrap)
                        ptr = arr.end();
                    else
                    {
                        cerr << "exception: Program tried to move head past the first memory cell." << endl;
                        return;
                    }
                }
                --ptr;
                
                break;
        
            case '+':
                ++(*ptr);
                break;
            
            case '-':
                --(*ptr);
                break;
            
            case '.':
                cout << (unsigned char)*ptr;
                break;
           
            case ',':
                cin >> *ptr;
                break;
            
           
            case '[':

                if((*ptr) == 0)
                {
                    ++NoMatchBrackets;

                    while(NoMatchBrackets != 0 )
                    {
                        ++Symbol;
                        
                        if(*Symbol == '[')
                            ++NoMatchBrackets;
                        if(*Symbol == ']')
                            --NoMatchBrackets;
                    }
                    

                }

                break;
            case ']':
                if((*ptr) != 0)
                {
                    ++NoMatchBrackets;
                    
                    

                    while(NoMatchBrackets != 0 )
                    {
                        
                        --Symbol;
                         if(*Symbol == ']')
                            ++NoMatchBrackets;
                        if(*Symbol == '[')
                            --NoMatchBrackets;
                       
                    }
                    

                }

                break;
            default:
                break;
            
            
        }


    }

  
}
