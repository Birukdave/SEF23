class month {
  String dest;
  int d;
  month(String dest, int d) {
    this.dest=dest;
    this.d=d;
    String type[]={"Ticket ordered", "Total revenue", "Time sold"};
    String  tablepath="C:/Users/Lenovo/Desktop/Destination/"+dest+"/"+month()+".csv";
    File file = new File (tablepath);
    if (!file.exists()) {
      Table tablenew = new Table ();
      for (int a=1; a<=30; a++) {
        String day=a+"";
        for (int i=0; i<type.length; i++) {
          String types = type[i];
          tablenew.addColumn(day+"-"+types);
        }
      }
      int column= tablenew.getColumnIndex (day()+"-"+type[0]);
      int column1= tablenew.getColumnIndex (day()+"-"+type[1]);
      int column2= tablenew.getColumnIndex (day()+"-"+type[2]);
      TableRow newRow = tablenew.addRow ();
      newRow.setInt (column, d);
      newRow.setFloat (column1, d*float(destmoney.fee));
      println (hour() +"_"+minute());
      newRow.setString (column2, hour() +"_"+minute()+"_"+second());
      saveTable (tablenew, tablepath);
    } else if (file.exists()) {
      Table table = loadTable(tablepath, "header");
      int column= table.getColumnIndex (day()+"-"+type[0]);
      int column1= table.getColumnIndex (day()+"-"+type[1]);
      int column2= table.getColumnIndex (day()+"-"+type[2]);
      TableRow newRow = table.addRow ();
      newRow.setInt (column,d);
      newRow.setFloat (column1,d*float(destmoney.fee));
      newRow.setString (column2,"nothing"+hour()+"-"+minute()+"_"+second());
      saveTable (table, tablepath);
    }
  }
}
