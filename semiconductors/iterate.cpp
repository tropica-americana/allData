#include <iostream>
#include <fstream>
#include <ctime>
#include <mutex>
#include <string>
#include <thread>
#include <vector>
#include <chrono>
#include <regex>
void maintainString ( std::string & inputString , std::mutex & stringMtx , bool & isRunning ) ; 
int main () {
    time_t now ; 
    time(&now) ; // stores time in current time 
    // same as debug habits 
    std::string textfile ; 
    // std::cin >> textfile ;
    textfile = "debug.txt" ;
	std::ifstream file(textfile);
	std::string line;
	std::string input ;
	std::string allInputLines ;
    bool pressedQ = false ;
    bool isRunning = true ;
	bool encounteredRod = false;
    std::mutex stringMtx ; 
    std::thread stringThread ( maintainString , std::ref(input) , std::ref(stringMtx) , std::ref(isRunning) ) ;
	stringThread.detach() ;
    // presenting all the features to the user
    std::this_thread::sleep_for(std::chrono::milliseconds(500)) ;
    while ( isRunning ) {
        stringMtx.lock() ;
        if ( input == "q" ) {
            isRunning = false ;
        }
        if ( input == ""){
            std::getline ( file , line ) ;
            std::cout << line << std::endl ;
            time_t now2 ;
            now2 = now ;  
            std::cout << "time passed in this loop is " << difftime(time(NULL) , now) << std::endl ;
        } 
        std::this_thread::sleep_for(std::chrono::milliseconds(10)) ;
        stringMtx.unlock() ;
    }
	

    return 0  ; 
}

void maintainString ( std::string & inputString , std::mutex & stringMtx , bool & isRunning ) {
    std::string input ; 
    std::getline(std::cin , input ) ; 
    stringMtx.lock() ;
    inputString = input ;
    stringMtx.unlock() ;
} 