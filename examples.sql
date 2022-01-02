-- Get all friends for a user
SELECT * FROM User
WHERE id IN (
    SELECT 
    CASE WHEN first_user_id = 1 THEN second_user_id
    ELSE first_user_id 
    END AS friend_id 
    FROM Friendship 
    Where first_user_id = 1 OR second_user_id = 1
);

-- Get timeline posts for a user
SELECT * FROM Post
WHERE author_id IN (
    SELECT 
    CASE WHEN first_user_id = 1 THEN second_user_id
    ELSE first_user_id
    END AS friend_id
    FROM Friendship
    Where first_user_id = 1 OR second_user_id = 1
)
OR author_id = 1
ORDER BY created_at DESC;

-- Get active conversation messages for a user
SELECT * FROM Message
WHERE thread_id IN (
    SELECT id FROM MessageThread
    WHERE id IN (
        SELECT thread_id FROM MessageThreadOnUser
        WHERE user_id = 1
    )
    ORDER BY created_at DESC
);
