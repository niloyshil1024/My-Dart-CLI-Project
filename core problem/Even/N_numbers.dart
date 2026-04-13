 positiveSum(List<int> arr) {
  int sum=0;
  for(int i=0;i<arr.length;i++){
    if(arr[i]>=0){
        sum +=arr[i];
    }
    }
    return sum;
  }
  // your code here
void main(){
  List<int> arr = [1,-4,7,12];
  int sum=positiveSum(arr);
  print(sum);
}