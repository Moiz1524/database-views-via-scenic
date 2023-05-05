SELECT
  CONCAT('Comment', '-', comments.id) AS id,
  comments.body AS body, 
  'Comment' AS contentable_type,
  comments.id AS contentable_id,
  comments.created_at AS created_at,
  comments.updated_at AS updated_at
FROM 
  comments

UNION

SELECT
  CONCAT('Post', '-', posts.id) AS id,
  posts.body AS body,
  'Post' AS contentable_type,
  posts.id AS contentable_id,
  posts.created_at AS created_at,
  posts.updated_at AS updated_at
FROM 
  posts