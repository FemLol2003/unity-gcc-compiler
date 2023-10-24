using System.Runtime.InteropServices;

public class AdditionSample
{

#if UNITY_IOS && !UNITY_EDITOR
    private const string LibraryName = "__Internal";
#else
    private const string LibraryName = "addition";
#endif

    [DllImport(LibraryName)]
    private static extern int AddTwoIntegers(int a, int b);
}