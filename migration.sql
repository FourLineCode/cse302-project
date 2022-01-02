-- Create the database
DROP DATABASE IF EXISTS social_media;
CREATE DATABASE IF NOT EXISTS social_media;

-- Create User table
CREATE TABLE User (
    id INT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    email TEXT NOT NULL,
    username TEXT NOT NULL,
    password_hash TEXT NOT NULL,
    bio TEXT
);

-- Create Friendship table
CREATE TABLE Friendship (
    id INT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    first_user_id INT NOT NULL,
    second_user_id INT NOT NULL,
    FOREIGN KEY (first_user_id) REFERENCES User(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (second_user_id) REFERENCES User(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    UNIQUE KEY user_friendship(first_user_id, second_user_id)
);

-- Create FriendRequest table
CREATE TABLE FriendRequest (
    id INT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    from_user_id INT NOT NULL,
    to_user_id INT NOT NULL,
    FOREIGN KEY (from_user_id) REFERENCES User(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (to_user_id) REFERENCES User(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    UNIQUE KEY user_friendrequest(from_user_id, to_user_id)
);

-- Create Post Table
CREATE TABLE Post (
    id INT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    post_body TEXT NOT NULL,
    author_id INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES User(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Create PostLike Table
CREATE TABLE PostLike (
    id INT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    post_id INT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (post_id) REFERENCES Post(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (user_id) REFERENCES User(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    UNIQUE KEY user_postlike(post_id, user_id)
);

-- Create PostComment Table
CREATE TABLE PostComment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    comment_body TEXT NOT NULL,
    post_id INT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (post_id) REFERENCES Post(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (user_id) REFERENCES User(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Create MessageThread Table
CREATE TABLE MessageThread (
    id INT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Create MessageThreadOnUser Table
CREATE TABLE MessageThreadOnUser (
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    user_id INT NOT NULL,
    thread_id INT NOT NULL,
    PRIMARY KEY (user_id, thread_id)
);

-- Create Message Table
CREATE TABLE Message (
    id INT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    message_body TEXT NOT NULL,
    author_id INT NOT NULL,
    thread_id INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES User(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (thread_id) REFERENCES MessageThread(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Create indexes on unique fields
CREATE UNIQUE INDEX user_email_key ON User(email);
CREATE UNIQUE INDEX user_username_key ON User(username);
CREATE UNIQUE INDEX friendship_first_user_id_second_user_id_key ON Friendship(first_user_id, second_user_id);
CREATE UNIQUE INDEX friendrequest_from_user_id_to_user_id_key ON FriendRequest(from_user_id, to_user_id);
