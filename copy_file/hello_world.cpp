#include <iostream>
#include <fstream>

int main()
{
    std::string greeting = "Hello World!";

    /*to screen*/
    std::cout << greeting << std::endl;

    /*to file*/
    std::ofstream ofs("./mount_file/hello.txt");
    ofs << greeting << std::endl;
    ofs.close();
}