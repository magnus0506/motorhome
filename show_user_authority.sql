SELECT u.username, u.password, u.enabled, a.authority
FROM users u
JOIN authorities a
ON u.username = a.username