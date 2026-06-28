class BrowserHistory {
  ArrayList<String> histories = new ArrayList<>();
  int current = 0;

  public BrowserHistory(String homepage) {
    histories.add(homepage);
  }

  public void visit(String url) {
    histories.subList(current + 1, histories.size()).clear();
    histories.add(url);
    current = histories.size() - 1;
  }

  public String back(int steps) {
    current = Math.max(current - steps, 0);
    return histories.get(current);
  }

  public String forward(int steps) {
    current = Math.min(current + steps, histories.size() - 1);
    return histories.get(current);
  }
}

/**
 * Your BrowserHistory object will be instantiated and called as such:
 * BrowserHistory obj = new BrowserHistory(homepage);
 * obj.visit(url);
 * String param_2 = obj.back(steps);
 * String param_3 = obj.forward(steps);
 */
