package test;

import java.io.File;
import java.io.FileReader;

import org.junit.Test;

import parser.Parser;
import parser.Start;

public class TestBuildTree extends TestCaseOutput {
	private final static String DATA = "data/";
	private final static String RESULT = "result/";
	private final static String RESULT_EXTENSION = ".res";

	private void assertCorrectOutput(String testName) {
		String fullName = testName;
		dumpTree(DATA + fullName);
		assertOutput(new File(RESULT + fullName + RESULT_EXTENSION));
	}

	@Test
	public void example() {
		assertCorrectOutput("example");
	}

	@Test
	public void nested() {
		assertCorrectOutput("nested");
	}

	@Test
	public void iddecliduse() {
		assertCorrectOutput("iddecliduse");
	}

	@Test
	public void missingdecl() {
		assertCorrectOutput("missingdecl");
	}

	private static void dumpTree(String arg) {
		try {
			Parser parser = new Parser(new FileReader(arg));
			Start start = parser.start();
			start.nameAnalysis();
			start.printBindings("", System.out);
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(e.getMessage());
		}
	}

	public static void main(String[] args) {
		dumpTree(args[0]);
	}
}
