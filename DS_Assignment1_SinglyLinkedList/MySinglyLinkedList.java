package DS_Assignment1_SinglyLinkedList;

/**
 *class to create a Singly linked list and perform operations in it 
 * @param <T> : generic type of object
 */
public class MySinglyLinkedList<T> {

	private Node<T> startNode;
	private int actual_size = 0;

	/**
	 * unparameterized constructor to initialize a node
	 */
	public MySinglyLinkedList() {
		
		startNode = null;
	}
	
	/**
	 * parameterized constructor to create a node with the given value
	 * @param value : value of the node
	 */
	public MySinglyLinkedList(T value) {
		
		startNode.value = value;
	}

	/**
	 * method to add a node with a specified node value
	 * @param value : value of the node
	 * @return : boolean
	 */
	public boolean addNode(T value) {

		Node<T> newNode = new Node<T>(value);
		if(startNode == null){

			startNode = newNode;
			actual_size++;
		}
		else{

			Node<T> temp = startNode;
			while(temp.next != null) {

				temp = temp.next;
			}
			temp.next = newNode;
			actual_size++;
		}
		return true;
	}

	/**
	 * method to add a node at a specified position
	 * @param index : position at which the node is to be added
	 * @param value : value of the node to be added
	 * @return : boolean
	 */
	public boolean addNode(int index, T value) {

		if(actual_size < index || index < 0) {

			throw new ArrayIndexOutOfBoundsException();
		}
		Node<T> newNode = new Node<T>(value);
		if(index == 0){

			newNode.next = startNode;
			startNode = newNode;
			actual_size++;
		}
		else{
			Node<T> temp = startNode;
			int count = 0;
			while(count != index-1) {

				temp = temp.next;
				count++;
			}
			newNode.next = temp.next;
			temp.next = newNode;
			actual_size++;
		}
		return true;
	}

	/**
	 * method to remove a node corresponding to its value
	 * @param value : value of the nod to be deleted
	 * @return : boolean
	 */
	public boolean removeNode(T value) {

		Node<T> prevNode = startNode;
		Node<T> currentNode = startNode;
		
		if(currentNode.value.equals(value)){

			startNode = currentNode.next;
			currentNode = null;
		} else{
			while(!currentNode.value.equals(value) && currentNode.next != null) {

				prevNode = currentNode;
				currentNode  = prevNode.next;	
			}
			if(!currentNode.value.equals(value) && currentNode.next == null) {
				
				throw new NullPointerException();
			}
			prevNode.next = currentNode.next;
			currentNode = null;
		}
		actual_size--;
		return true;
	}

	/**
	 * method to remove a node from a specified location
	 * @param index : location from which the node is to be deleted
	 * @return : boolean
	 */
	public T removeNode(int index) {

		T value;
		if(actual_size <= index || index < 0) {

			throw new ArrayIndexOutOfBoundsException();
		}
		if(index == 0){

			value = startNode.value;
			startNode = startNode.next;
		}
		else{
			Node<T> prevNode = startNode;
			Node<T> nextNode = startNode.next;
			int count = 0;
			while(count != index-1) {

				prevNode = prevNode.next;
				nextNode = nextNode.next;
				count++;
			}
			prevNode.next = nextNode.next;
			value = nextNode.value;
			nextNode = null;
		}
		actual_size--;
		return value;
	}

	/**
	 * method to get node value from a given index
	 * @param index : index from which the node value is to be retrieved
	 * @return : generic type object
	 */
	public T get(int index) {

		if(actual_size <= index || index < 0) {

			throw new ArrayIndexOutOfBoundsException();
		}
		if(index == 0){

			return startNode.value;
		}
		else{

			Node<T> temp = startNode;
			int count = 0;
			while(count != index-1) {

				temp = temp.next;
				count++;
			}
			return temp.next.value;
		}
	}

	/**
	 * method to reverse the node list
	 */
	public void reverse() {

		Node<T> prev = null;
		Node<T> next = null;
		Node<T> current = startNode;
		while(current.next != null) {

			next = current.next;
			current.next = prev;
			prev = current;
			current = next;
		}
		current.next = prev;
		startNode = current;
	}

	/**
	 * method to print the list
	 */
	public void print(){

		Node<T> tempNode = startNode;

		while(tempNode != null){

			System.out.println(tempNode.value);
			tempNode = tempNode.next;
		}
	}
	
	/**
	 * method to check for empty list
	 */
	
	public boolean isEmpty() {
		
		if(actual_size == 0) {
			return true;
		}
		return false;
	}
	
	/**
	 * method to return size of the list
	 */
	public int size() {
		
		return actual_size;
	}
}