public class StringArrayTest {

    public static List<String> generateStringArray(Integer num)
    {
        List<String> numList = new List<String>();
        Integer i;
        For(i=0;i<num;i++)
        {
            numList.add('Test ' + i);
            
        }       
        return numList;
    }    
}