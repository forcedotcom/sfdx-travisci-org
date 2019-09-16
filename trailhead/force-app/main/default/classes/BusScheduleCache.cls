public class BusScheduleCache {

    private Cache.OrgPartition part;
    
    public BusScheduleCache() {
        this.part = Cache.Org.getPartition('local.BusSchedule');
    }
    
    public void putSchedule(String busLine, Time[] schedule) {
        part.put(busLine, schedule);
    }
    
    public Time[] getSchedule(String busLine){
        Time[] schedule = new List<Time>();
        
        if(part!=null && (Time[])part.get(busLine) != null) {
            schedule = (Time[])part.get(busLine);  
        } else {
            schedule.add(Time.newInstance(8,0,0,0));
            schedule.add(Time.newInstance(17,0,0,0));
        }
        return schedule;
    }
}