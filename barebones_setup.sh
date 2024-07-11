dotnet new sln
dotnet new classlib -o StringLibrary
dotnet sln add StringLibrary/StringLibrary.csproj
dotnet build
dotnet new console -o ShowCase
dotnet sln add ShowCase/ShowCase.csproj
dotnet add ShowCase/ShowCase.csproj reference StringLibrary/StringLibrary.csproj
dotnet run --project ShowCase/ShowCase.csproj
dotnet new mstest -o StringLibraryTest
dotnet sln add StringLibraryTest/StringLibraryTest.csproj
dotnet add StringLibraryTest/StringLibraryTest.csproj reference StringLibrary/StringLibrary.csproj
dotnet test StringLibraryTest/StringLibraryTest.csproj
dotnet test StringLibraryTest/StringLibraryTest.csproj --configuration Release