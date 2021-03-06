import static org.junit.Assert.assertArrayEquals;

import org.junit.Test;


public class TestArraySequence {

	ArraySequence longSequence = new ArraySequence();
	int[] input = {1, 2, 3, 2, 3, 4, 5, 3, 4, 2, 2, 3, 4, 5, 6, 7, 8, 1, 2, 4, 5, 6, 7, 8, 9};
	int[] output = {1, 2, 4, 5, 6, 7, 8, 9};
	
	@Test
	public void testLongestArraySequence() {
		assertArrayEquals(output, longSequence.longestSequence(input));
	}

}
