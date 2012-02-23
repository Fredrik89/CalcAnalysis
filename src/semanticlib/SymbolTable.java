package semanticlib;
import java.util.HashMap;

/**
 * Maintains a stack of dictionaries for block-structured symbol handling.
 */
public class SymbolTable<K, V> {
    private StackedMap<K, V> top = null; // The top block on the stack.
    private int n = 0; // The number of blocks on the stack

    /**
     * Adds the symbol (and its associated meaning) to the top dictionary. The
     * symbol will shadow existing symbols of the same name.
     */
    public void add(K symbol, V meaning) {
        if (top == null)
            throw new RuntimeException(
                    "SymbolTable.add was called without any prior call to enterBlock");
        top.put(symbol, meaning);
    }

    /**
     * Looks up the meaning of symbol.
     */
    public V lookup(K symbol) {
        if (top == null)
            throw new RuntimeException(
                    "SymbolTable.lookup was called without any prior call to enterBlock");
        return top.lookup(symbol);
    }

    /**
     * Adds a new dictionary to the stack. This method must be called prior to
     * calls that add or look up symbols.
     */
    public void enterBlock() {
        top = new StackedMap(top); // push a new element on top of the stack
        n++;
    }

    /**
     * Removes the top dictionary from the stack.
     */
    public void exitBlock() {
        if (top == null)
            throw new RuntimeException(
                    "SymbolTable.exitBlock was called on an empty stack");
        top = top.next; // pop the top element of the stack
        n--;
    }

    /**
     * Returns true if the symbol is already in the top dictionary
     */
    public boolean alreadyDeclared(K symbol) {
        if (top == null)
            throw new RuntimeException(
                    "SymbolTable.alreadyDeclared was called without any prior call to enterBlock");
        return top.get(symbol) != null;
    }

    /**
     * Returns the current block level (= the number of dictionaries on the
     * stack)
     */
    public int blockLevel() {
        return n;
    }
    private static class StackedMap<K, V> extends HashMap<K, V> {
        private StackedMap<K, V> next;

        private StackedMap(StackedMap<K, V> next) {
            this.next = next;
        }

        private V lookup(K symbol) {
            V result = get(symbol);
            if (result == null && next != null)
                return next.lookup(symbol);
            else
                return result;
        }
    }
}
