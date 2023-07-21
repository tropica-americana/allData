#include <iostream>
#include <fstream>
#include <regex>
#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <algorithm>
#include <iterator>
#include <sstream>
#include <fstream>
#include <iomanip>
#include <regex>
#include <algorithm>
#include <random>

using std::vector ; 
using std::string ; 
using std::regex ; 
using std::cout ; 
using std::cin ; 
using std::endl ; 
void debugChess () ;
void debugCode () ; 
void debugHabits () ; 
void debugMRISequences () ; 
void debugTools () ; 
void debugTextFile ( std::string textfile ) ;
std::string debugchess {"/home/sachin/Desktop/AllData/semiconductors/debugChess.txt"} ; 
std::string debugcode {"/home/sachin/Desktop/AllData/semiconductors/debug.txt"} ;
std::string debugHabitsTextFile ("/home/sachin/Desktop/AllData/dailyEventsAndQuotations/debughabits.txt") ; 
std::string debugMRISequencesTextFile ("/home/sachin/Desktop/AllData/medicine/radiology/mriSequences.txt") ; 
std::string debugToolsTextFile ("/home/sachin/Desktop/AllData/dailyEventsAndQuotations/debugTools.txt") ;
bool pressedQ = false ;
bool isRunning = true ;
int main () {
	
	std::cout << "what do you wanna debug" << std::endl; 
	// enter chess or 'c' for chess 
	std::cout << "enter show after enterting deb to show the names of the text files  " << std::endl;
	std::cout << "enter chess or 'ch' for chess" << std::endl;
	std::cout << "enter code or 'co' for code" << std::endl;
	std::cout << "enter habits or 'h' for habits" << std::endl;
	std::cout << "enter 'seq' for MRI sequences" << std::endl;
	std::cout << "enter 'tools' for tools" << std::endl;
	std::cout << "enter txt for getting the address of a text file " << endl ; 
	std::cout << "enter q to quit" << std::endl;
	std::string input ;
	std::cin >> input ;
	if (input == "tools" || input == " tools" ){
		while (isRunning) {
			if (pressedQ) {
				break;
			}
			debugTools();
			std::cout << "please enter q to exit the debug mode" << std::endl;
			std::getline (std::cin , input  ) ;
			if (input == "q") {
				isRunning = false ; 
			}
			else {
				std::cout << "repeating the process " << std::endl;
			}
		}
	} 
	if (input == "chess" || input == "ch" || input == "ch " || input == "chess " ) {
		while (isRunning ) {
			debugChess();
			if (pressedQ) {
				break;
			}
			std::cout << "please enter q to exit the debug mode" << std::endl;
			std::getline ( std::cin , input  ) ;
			if (input == "q") {
				isRunning = false ; 
				pressedQ = true ;
			}
			else {
				std::cout << "repeating the process " << std::endl;
			}
		}
	}
	// enter code or 'c' for code 
	else if (input == "code" || input == "co") {
		while (isRunning) {
			if (pressedQ) {
				break;
			}
			debugCode();
			std::cout << "please enter q to exit the debug mode" << std::endl;
			std::getline (std::cin , input  ) ;
			if (input == "q") {
				isRunning = false ; 
			}
			else {
				std::cout << "repeating the process " << std::endl;
			}
		}
	}
	else if (input == "habits" || input == "h") {
		debugTextFile( debugHabitsTextFile) ; 
	}
	else if ( input == "txt"){
		cout << "iterating over text file in random fashion "<< endl;
		std::string fileAddress ; 
		cin >> fileAddress ; 
		cout << "file address is " << fileAddress << endl ; 
		debugTextFile( fileAddress) ; 
		
	}
	else if (input == "seq" || input == " seq") {
		debugMRISequences() ; 
	}

	else if (input == "q") {
		return 0 ; 
	}
	else {
		std::cout << "input not found " << std::endl;
	}
	return 0 ; 
}

void debugCode () {
	std::ifstream file(debugcode);
	std::string line;
	std::string input ; 
	std::string allInputLines ; 
	bool encounteredRod = false;

	std::string rod="----------------------------------------------------" ; 
	// presenting all the features to the user 
	std::cout << "Welcome to the debug mode of the code" << std::endl;
	std::cout << "You can use the following commands to debug the code" << std::endl;
	std::cout << "q: quit the debug mode" << std::endl;
	std::cout << "----------------------------------------------------" << std::endl;
	while (!file.eof()  &&  !encounteredRod && !pressedQ) {
		std::getline(file, line);
		system("clear");
		std::cout << line << std::endl;
		if (line == rod) {
			encounteredRod = true;
			isRunning = false ;
		}
		std::getline (std::cin , input  ) ;
		if (input == "q") {
			pressedQ = true ;
			break;
		}
		// check whether input is empty 
		if (input == "") {
			continue;
		}
		else {
			allInputLines += rod + "\n";
			allInputLines +=  input + "\n";
			
		}

	}
	// close the file
	file.close();
	// open the file in append mode
	std::ofstream file2(debugHabitsTextFile , std::ofstream::app);
	// write the input lines at the end of the file 
	if (allInputLines != "") {
		file2 << allInputLines;
	}
	file2.close();

	return ; 
}
void debugChess () {

	std::ifstream file(debugchess);
	std::string line;
	std::string input ; 
	std::string allInputLines ; 
	bool encounteredRod = false;
	std::string rod="----------------------------------------------------" ; 
	// presenting all the features to the user 
	std::cout << "Welcome to the debug mode of the chess game" << std::endl;
	std::cout << "You can use the following commands to debug the game" << std::endl;
	std::cout << "q: quit the debug mode" << std::endl;
	std::cout << "----------------------------------------------------" << std::endl;
	while (!file.eof()  &&  !encounteredRod && !pressedQ )   {
		std::getline(file, line);
		//clearing the terminal before displaying the next line 
		system("clear");
		std::cout << line << std::endl;
		if (line == rod) {
			encounteredRod = true;
			isRunning = false ;
		}
		std::getline (std::cin , input  ) ;
		if (input == "q") {
			pressedQ = true ;

			break;
		}
		// check whether input is empty 
		if (input == "") {
			continue;
		}
		else {
			allInputLines += rod + "\n";
			allInputLines += line + ": " + input + "\n";
			
		}

	}
	// close the file
	file.close();
	// open the file in append mode
	std::ofstream file2(debugchess , std::ofstream::app);
	// write the input lines at the end of the file 
	if (allInputLines != "") {
		file2 << allInputLines;
	}
	file2.close();

	return ; 
}
void debugHabits () {
	std::ifstream file(debugHabitsTextFile);
	std::string line;
	std::string input ; 
	std::string allInputLines ; 
	bool encounteredRod = false;
	std::string rod="----------------------------------------------------" ; 
	// presenting all the features to the user 
	std::cout << "Welcome to the debug mode of habits " << std::endl;
	std::cout << "You can use the following commands to debug the game" << std::endl;
	std::cout << "q: quit the debug mode" << std::endl;
	std::cout << "----------------------------------------------------" << std::endl;
	while (!file.eof()  &&  !encounteredRod && !pressedQ )   {
		std::getline(file, line);
		//clearing the terminal before displaying the next line 
		system("clear");
		std::cout << line << std::endl;
		if (line == rod) {
			encounteredRod = true;
			isRunning = false ;
		}
		std::getline (std::cin , input  ) ;
		if (input == "q") {
			pressedQ = true ;

			break;
		}
		// check whether input is empty 
		if (input == "") {
			continue;
		}
		else {
			allInputLines += rod + "\n";
			allInputLines += line + ": " + input + "\n";
			
		}

	}
	// close the file
	file.close();
	// open the file in append mode
	std::ofstream file2( debugHabitsTextFile, std::ofstream::app );
	// write the input lines at the end of the file 
	if (allInputLines != "") {
		file2 << allInputLines;
	}
	file2.close();

	return ;
}

void debugMRISequences () {
	std::string currentLine ; 
	std::ifstream file(debugMRISequencesTextFile);
	while ( !file.eof() ){
		std::getline (file , currentLine ) ;
		std::cout << currentLine << std::endl ; 
	}
}
void debugTools () {
	// same as debug habits 
	std::ifstream file(debugToolsTextFile);
	std::string line;
	std::string input ;
	std::string allInputLines ;
	bool encounteredRod = false;
	std::string rod="----------------------------------------------------" ;
	// presenting all the features to the user
	std::cout << "Welcome to the debug mode of tools " << std::endl;
	std::cout << "You can use the following commands to debug the game" << std::endl;
	std::cout << "q: quit the debug mode" << std::endl;
	std::cout << "----------------------------------------------------" << std::endl;
	while (!file.eof()  &&  !encounteredRod && !pressedQ )   {
		std::getline(file, line);
		//clearing the terminal before displaying the next line
		system("clear");
		std::cout << line << std::endl;
		if (line == rod) {
			encounteredRod = true;
			isRunning = false ;
		}
		std::getline (std::cin , input  ) ;
		if (input == "q") {
			pressedQ = true ;

			break;
		}
		// check whether input is empty
		if (input == "") {
			continue;
		}
		else {
			allInputLines += rod + "\n";
			allInputLines += line + ": " + input + "\n";

		}

	}
	// close the file
	file.close();
	// open the file in append mode
	std::ofstream file2( debugToolsTextFile, std::ofstream::app );
	// write the input lines at the end of the file
	if (allInputLines != "") {
		file2 << allInputLines;
	}
	file2.close();

}



void debugTextFile ( std::string textfile ) {
	std::regex rodRegex ( "\\*--------\\*" ) ; 
	std::string rod="----------------------------------------------------" ;
	std::ifstream file(textfile);
	string line  ; 
	vector <string> lines ; 
	std::smatch match ; 
	int lineIndex = 0 ; 
	bool isRunning = true ; 
	while ( !file.eof() ) {
		std::getline( file ,line  ) ;
		if (  ! std::regex_search( line.cbegin() , line.cend() , match , rodRegex )  ){
			if ( !line.empty() ) 
				lines.push_back(line) ; 

			cout << "pushing : " << line << endl ; 
		 
		}
		else {
			cout << "unpushed : " << line << endl ;  
		}
	}
	file.close() ; 
	// shuffling the lines 
	auto rng = std::default_random_engine {};
	std::shuffle(std::begin(lines), std::end(lines), rng);
	std::ofstream fileAp( textfile , std::ofstream::app );

	cout << "enter q to quit " << endl ; 
	cout << "enter n for next" << endl ; 
	while ( isRunning ){
		if ( lineIndex >= lines.size() ){
			break ; 
		}
		
		string inputline ; 
		
		cout << lines[lineIndex] << endl ;
		cout << endl ;
		cout << endl ;
		std::getline ( cin , inputline ) ; 
		if ( inputline == "q" || inputline == " q " || inputline == " q"){
			isRunning = false ; 
			cout << "breaking the iteration " << endl ; 
			break ; 
		}
		if ( inputline == "n" || inputline == " n " || inputline == " n"){
			lineIndex++ ; 
			cout << "next sequence " << endl ; 
		
		} 		
		else {
			fileAp << rod ; 
			fileAp << endl ; 
			fileAp << ( lines[lineIndex] + " : " +  inputline + "\n") ; 
			fileAp << endl ; 
			fileAp << rod ; 			
		}
	}
	fileAp.close() ; 

}