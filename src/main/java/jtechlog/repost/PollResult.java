package jtechlog.repost;

/**
 * Szavazatokat gyűjti.
 */
public class PollResult {
    
    private int votes[] = new int[3];
    
    private int total = 0;
    
    /**
     * Szavazás.
     * 
     * @param index válasz indexe
     */
    public synchronized void vote(int index) {
        total++;
        votes[index]++;
        try {
            // Amiatt iktatunk be várakozást, hogy a dupla kattintást 
            // tesztelni lehessen
            Thread.sleep(1000);
        } catch (InterruptedException ex) {
            ex.printStackTrace();
        }
    }

    /**
     * Visszaadja a leadott szavazatok számát válaszonként.
     */
    public int[] getVotes() {
        return votes;
    }

    /**
     * Visszaadja az összes szavazat számát.
     */
    public int getTotal() {
        return total;
    }
}
