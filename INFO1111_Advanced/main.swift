import Foundation

// Define the Task class
class Task {
    var title: String
    var isCompleted: Bool
    
    init(title: String) {
        self.title = title
        self.isCompleted = false
    }
    
    func markAsCompleted() {
        self.isCompleted = true
    }
    
    func description() -> String {
        return "\(title) - \(isCompleted ? "Completed" : "Not Completed")"
    }
}

// Define the TaskManager class
class TaskManager {
    private var tasks: [Task] = []
    
    @discardableResult
    func addTask(title: String) -> TaskManager {
        let newTask = Task(title: title)
        tasks.append(newTask)
        return self
    }
    
    @discardableResult
    func completeTask(at index: Int) -> TaskManager {
        guard index >= 0 && index < tasks.count else {
            print("Invalid task index")
            return self
        }
        tasks[index].markAsCompleted()
        return self
    }
    
    func listTasks() -> String {
        var output = "Tasks:\n"
        for (index, task) in tasks.enumerated() {
            output += "\(index + 1). \(task.description())\n"
        }
        return output
    }
    
    func filterTasks(using predicate: (Task) -> Bool) -> [Task] {
        return tasks.filter(predicate)
    }
}

// Function to display the menu
func displayMenu() {
    print("""
    \nTask Manager:
    1. Add Task
    2. Complete Task
    3. List Tasks
    4. List Completed Tasks
    5. Exit
    """)
}

// Function to get user input
func getUserInput(prompt: String) -> String? {
    print(prompt, terminator: ": ")
    fflush(stdout) // Ensure the prompt is printed before waiting for input
    return readLine()
}

// Main function to run the task manager
func main() {
    
    let taskManager = TaskManager()
    var isRunning = true
    
    while isRunning {
        displayMenu()
        guard let choice = getUserInput(prompt: "Enter your choice"), let choiceInt = Int(choice) else {
            print("Invalid input. Please enter a number between 1 and 5.")
            continue
        }
        
        switch choiceInt {
        case 1:
            if let title = getUserInput(prompt: "Enter task title") {
                taskManager.addTask(title: title)
                print("Task added.")
            } else {
                print("Invalid input.")
            }
        case 2:
            if let indexString = getUserInput(prompt: "Enter task number to complete"), let index = Int(indexString) {
                taskManager.completeTask(at: index - 1)
                print("Task marked as completed.")
            } else {
                print("Invalid input.")
            }
        case 3:
            print(taskManager.listTasks())
        case 4:
            let completedTasks = taskManager.filterTasks { $0.isCompleted }
            print("Completed Tasks:")
            for task in completedTasks {
                print(task.description())
            }
        case 5:
            isRunning = false
            print("Exiting Task Manager. Goodbye!")
        default:
            print("Invalid choice. Please enter a number between 1 and 5.")
        }
    }
}

// Run the main function
main()
