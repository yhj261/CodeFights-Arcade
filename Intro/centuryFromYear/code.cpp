int centuryFromYear(int year) {
   if (year <= 1000) {
      if ((year % 100) != 0) {
         return (year / 100) + 1;
      }
      else {
         return (year / 100);
      }
   }
   else {
      if ((year % 100) != 0) {
         return (year / 100) + 1;
      }
      else {
         return (year / 100);
      }
   }
}