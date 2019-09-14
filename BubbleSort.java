public class BubbleSort implements SortingAlgorithm{

	public void swap(int [] a, int x, int y){

		int temp=a[x];
		a[x]=a[y];
		a[y]=temp;
	}

	public void sort(int [] a){

		for(int j=0;j<a.length;j++){
			for(int i=0;i<a.length-1-j;i++)
				if(a[i]>a[i+1])
					swap(a,i,i+1);
		}
	}

}