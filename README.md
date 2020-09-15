# sqitch To use multiple registry to deploy, revert and verify 

- CREATE DATABASE
  ```
  createdb flipr_test;

  ```



- USE CLI TO DEPLOY , REVERT and VERIFY
  ```
   sqitch --registry sqitch_v2.0 deploy db:pg:flipr_test 
   ```

   ```
   sqitch --registry sqitch_v2.0 revert db:pg:flipr_test
   ``` 
   ```
   sqitch --registry sqitch_v2.0 verify db:pg:flipr_test

   ```

- ASSIGN TAG AND USE TAG TO DEPLOY 

----
   ```
   sqitch tag <name> -n"note"
   ```
----   
   ```
   sqitch --registry sqitch_v3.0 deploy    db:pg:flipr_test --to @v2.0.0-dev1 
   ```   