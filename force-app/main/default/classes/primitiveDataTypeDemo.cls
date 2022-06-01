public class primitiveDataTypeDemo {
    public void printNewDateTime(){
        Date today = date.today();
        time newTime = time.newInstance(9, 8, 0, 0);
        Datetime dt1 = Datetime.newInstance(today, newTime);

        system.debug('dt1 '+ dt1 );

        Datetime currentDt = datetime.now();
        system.debug('current dt1 '+ currentDt);

        long longTime = 123657632L;
        Datetime dt4 = DateTime.newInstance(longtime);
        system.debug('dt4 long time:' + dt4);

        dateTime birthday = DateTime.newInstance(1981,12,22,12,50,11);
        long longbd = birthday.getTime();
        system.debug(longbd);

    }

   
    public void printBasicDataType() {
      
        //Method Body
        string batchName = 'Falcons 6';
        integer totalCandidates = 120;
        boolean isAdminCompleted = True;

        system.debug('Batch name is '+ batchName);
        system.debug('Total # of candidates: '+ totalCandidates);
        system.debug('Admin Completed? '+ isAdminCompleted);

        Decimal decValue = 27.01;
        system.debug('Decimal '+ decValue);

        Long longValue =21512389;
        system.debug('long ' + longValue);

        Object obj = 'This is a string';
        Object obj2 = 2;
        ID id1 = '7018c000001wQ0sAAE';

        System.debug('object: ' + obj);
        System.debug('object: ' + obj2);
        System.debug('ID: ' + id1);


    }
}
