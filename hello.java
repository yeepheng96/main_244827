// Code: STIW2024
// Course: Software Engineering
// Name: ONG YEE PHENG
// Matric Number: 244827
// Group: A
public class hello {
    public static void main(String[] args) {
        // Initiate and declare name, matricNo, group, code, infoCount and starBuild = 0
        String name = "";
        int matricNo = 0;
        String code = "";
        int infoCount = 0;
        char group = 'a';
        int starBuild = 0;
        // Build stars
        do{
            for(int count=0; count<45; count++){
                System.out.print("*");
            }
            // Stars build finish, add count
            starBuild = starBuild + 1;
            // If not self-introduce yet, start to do self-introduce
            if(infoCount==0){
                // Create self-introduce
                name = "Ong Yee Pheng";
                matricNo = 244827;
                code = "STIW2024";
                group = 'A';
                // Print out
                System.out.println("\nHi everyone!"
                        + "\nMy name is "+name+","
                        + "\nMy matric number is "+matricNo+","
                        + "\n"+code+" Software Engineering A171 (Group "+group+")"
                        + "\nLet's code together!");
                // Add self-introduce's count
                infoCount++;
            }
            // Build 1 more stars row if star rows only 1, else end loop
        }
        while(starBuild==1);
        // 2 rows of stars finish builded
        System.out.println("");
    }
    // End main class
}
