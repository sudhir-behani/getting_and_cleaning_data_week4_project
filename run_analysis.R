read_data <- function() {
  # read data from files to the variables 
  # read train data
  print("Reading Data from Files")
  read_train_x <- readLines("UCI HAR Dataset/train/X_train.txt")
  read_train_y <- readLines("UCI HAR Dataset/train/Y_train.txt")
  read_subject_train <- readLines("UCI HAR Dataset/train/subject_train.txt")
  # read test data
  read_test_x <- readLines("UCI HAR Dataset/test/X_test.txt")
  read_test_y <- readLines("UCI HAR Dataset/test/Y_test.txt")
  read_subject_test <- readLines("UCI HAR Dataset/test/subject_test.txt")
  print("Reading data completed.")
  
  print("Convert Data")
  train_x <- read.table(text=read_train_x)
  train_y <- read.table(text=read_train_y)
  subject_train <- read.table(text=read_subject_train)
  print(length(train_x))
  
  test_x <- read.table(text=read_test_x)
  test_y <- read.table(text=read_test_y)
  subject_test <- as.data.frame(read_subject_test)
  
  # Merge Data <- train + test
  colnames(train_x) <- "Measurement"
  colnames(train_y) <- "Activity"
  colnames(subject_train) <- "Subject"
  
  colnames(test_x) <- "Measurement"
  colnames(test_y) <- "Activity"
  colnames(subject_test) <- "Subject"
  
  print("Merge the train and the test data")
  total_x <- rbind(train_x, test_x)
  total_y <- rbind(train_y, test_y)
  total_subject <- rbind(subject_train, subject_test)
  print(length(total_subject))
}

read_data()
print("**End of Program**")
