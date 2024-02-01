package NTTAlex.petStoreAPI;

import com.intuit.karate.junit5.Karate;

class Runner {
    
    @Karate.Test
    Karate petStore() {
        return Karate.run("petStore").relativeTo(getClass());
    }    

}
