#include <iostream>
#include <fstream>
void debugChess () ;
void debugCode () ; 
void debugHabits () ; 
std::string debugchess {"/Users/sachinjain/Desktop/AllData/semiconductors/debugChess.txt"} ; 
std::string debugcode {"/Users/sachinjain/Desktop/AllData/semiconductors/debug.txt"} ;
std::string debugHabitsTextFile ("/Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/debughabits.txt") ; 
bool pressedQ = false ;
bool isRunning = true ;
int main () {
	
	std::cout << "what do you wanna debug" << std::endl; 
	// enter chess or 'c' for chess 
	std::cout << "enter chess or 'ch' for chess" << std::endl;
	std::cout << "enter code or 'co' for code" << std::endl;
	std::cout << " enter habits or 'h' for habits" << std::endl;
	std::cout << "enter q to quit" << std::endl;
	std::string input ;
	std::cin >> input ;
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
		while (isRunning) {
			if (pressedQ) {
				break;
			}
			debugHabits();
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
	std::ofstream file2("debug.txt" , std::ofstream::app);
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