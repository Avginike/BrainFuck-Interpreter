#pragma once

#include <string>
#include <array>
using namespace std;

#define MEMORY_SIZE 30000

using Byte = uint8_t;
using memory = std::array<Byte,MEMORY_SIZE>;

void DoAsBF(std::string InputS, std::array<uint8_t,30000>& vec,  std::array<uint8_t,30000>::iterator& ptr, bool &wrap);
void ExecuteCommand(string Input, memory &Cells, memory::iterator& CellIter, bool &IsTerminalMode);
void ResetMemory(memory &Cells, memory::iterator& CellIter);
