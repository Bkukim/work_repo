package basic2;


import java.util.Arrays;
import java.util.Comparator;
import java.util.Scanner;

/**
 * packageName : basic2
 * fileName : 백준_11650_좌표 정렬하기
 * author : PC
 * date : 2024-02-26
 * description :
 * 요약 :
 * <p>
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2024-02-26        PC          최초 생성
 */
public class Simple097 {
    public static void main(String[] args) {
        Scanner scanner =new Scanner(System.in);
        int N = scanner.nextInt();
        int[][] arr = new int[N][2];
        for (int i = 0; i < N; i++) {
            int x = scanner.nextInt();
            int y = scanner.nextInt();
            arr[i][0] = x;
            arr[i][1] = y;
        }
        Arrays.sort(arr, new Comparator<int[]>() { // compare함수를 재정의 해주어야한다.
            // 여기서 o1 - o2인 경우 오름차순
            // o2-o1인 경우 내림차순
            // o1과o2의 인덱스를 기준으로 만들 수 있다. 예를들면 o1[1]-o2[1]이면 행의 두번째 수를 기준으로 오름차순으로 정리하는 것이다.
            // todo : 이렇게가 가능한 이유는 sort는 기본적으로 오름차순을 하려고한다.
            //  o1[0]-o2[0]에서 음수가 나오면 뒤의 수가 크니까 오름차순이므로 그대로둔다.
            //  그러나 양수이면 o1(먼저 오는 수)이 더크므로 o1과o2의 순서를 바꿔버린다.
            //  그럼 o2-o1을 보자 o2가 더 크다고 했을 때 이 값은 양수가 나온다.
            //  그래서 자리를 바꿔야하는데 o2는 더 큰 수니까 결과적으로는 내림차순으로 정렬이 되버린다.
            //  이런 원리로 내림차순과 오름차순을 결정할 수 있다.
            @Override
            public int compare(int[] o1, int[] o2) {
                return o1[0]!=o2[0] ? o1[0]-o2[0] : o1[1]-o2[1];
            } // 여기서는 0번 인덱스 수가 같지 않으면 0번 인덱스 를 기준으로 오름차순, 같으면 1번 인덱스를 기준으로 내림차순으로 정리하면된다.
        });
        for (int i = 0; i < arr.length; i++) {
            for (int j = 0; j < arr[i].length; j++) {
                System.out.print(arr[i][j]+ " ");
            }
            System.out.println();
        }
    }
}
