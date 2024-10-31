/* Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
Example 2:

Input: nums = [3,2,4], target = 6
Output: [1,2]
Example 3:

Input: nums = [3,3], target = 6
Output: [0,1]

 */

void main(){
  print(twoSum([2, 7, 11, 15], 9));  // Output: [0, 1]
  print(twoSum([3, 2, 4], 6));       // Output: [1, 2]
  print(twoSum([3, 3], 6));          // Output: [0, 1]
  print(twoSum([1,2,3],6));
}

List<int> twoSum(List<int> nums, int target){
  // Map to store the number and the indices
  Map<int,int> numMap = {};

  // Loop through the list
  for(int i =0;i< nums.length;i++){
    int complement = target - nums[i];

    // check if the complement is already in the map
    if(numMap.containsKey(complement)){
      return [numMap[complement]!, i];
    }

    // otherwise store the number with its index
    numMap[nums[i]] = i;
  }
  // return the empty list if no solution is found
  return [];
}