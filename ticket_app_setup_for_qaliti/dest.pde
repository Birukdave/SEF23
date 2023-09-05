class amount {
  String tablePath = "C:/Users/Lenovo/Desktop/project/report.csv";
  String dest;
  int c;
  boolean date_exists=false;
  amount(String dest, int c) {
    this.c=c;
    this.dest=dest;
    String a=c+"";
    String d=c*float(destmoney.fee)+"";
    File file = new File (tablePath);
    if (!file.exists()) {
      Table tablenew = new Table ();
      TableRow newRow = tablenew.addRow ();
      tablenew.addColumn("Date");
      tablenew.addColumn("tickets sold");
      tablenew.addColumn("Total revenue");
      tablenew.addColumn("popular desination");
      tablenew.addColumn("coca cola");
      tablenew.addColumn("st.ledeta");
      tablenew.addColumn("tegabatd");
      tablenew.addColumn("mexico");
      tablenew.addColumn("legehar");
      tablenew.addColumn("stadium");
      tablenew.addColumn("st.estifanos");
      tablenew.addColumn("bambis");
      tablenew.addColumn("st.urael");
      tablenew.addColumn("hayahulet 2");
      tablenew.addColumn("hayahulet 1");
      tablenew.addColumn("lem hotel");
      tablenew.addColumn("megenagna");
      tablenew.addColumn("gurd shola2");
      tablenew.addColumn("gurd shola1");
      tablenew.addColumn("management institution");
      tablenew.addColumn("civil sevice college");
      tablenew.addColumn("st.michael");
      tablenew.addColumn("c.m.c");
      tablenew.addColumn("meri");
      tablenew.addColumn("ayat");
      tablenew.addColumn("srs");
      tablenew.addColumn("mkt");
      newRow.setString (0, day()+"/"+month()+"/"+year());
      newRow.setString (1, a);
      newRow.setString (2, d);
      saveTable (tablenew, tablePath);
      int column= tablenew.getColumnIndex (dest); 
      newRow.setString (column, a);
      saveTable (tablenew, tablePath);
    } else if (file.exists()) {
      Table table = loadTable(tablePath, "header");
      int date = table.getColumnIndex ("Date");
      for (int b=0; b<table.getRowCount(); b++) {
        String Date=table.getString (b, date);
        if (Date.equals(day()+"/"+month()+"/"+year())) {
          int column= table.getColumnIndex (dest);      
          date_exists=true;
          int ticket_sold=table.getInt (b,1);
          ticket_sold=ticket_sold+c;
          table.setInt(b, 1, ticket_sold);
          float total_revenue=table.getFloat(b,1); 
          total_revenue=total_revenue+c*float(destmoney.fee);
          table.setFloat(b, 2, total_revenue);
          int ticket_soldf=table.getInt (b, column);
          ticket_soldf=ticket_soldf+c;
          table.setInt(b, column, ticket_soldf);
        }
      }
      saveTable(table, tablePath);
      if (!date_exists==true) {
        TableRow newRow = table.addRow ();
        newRow.setString (0, day()+"/"+month()+"/"+year());
        newRow.setString (1, a);
        newRow.setString (2, d);
        int column= table.getColumnIndex (dest);      
        newRow.setString (column, a);
        saveTable (table, tablePath);
      }
    }
  }
}
