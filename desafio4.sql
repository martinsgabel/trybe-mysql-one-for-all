SELECT username AS `usuario`,
IF (MAX(history.reproduction_date)
BETWEEN '2021-01-01' AND '2021-12-31', "Usuário ativo", "Usuário inativo")
AS `condicao_usuario`
FROM SpotifyClone.users users
INNER JOIN SpotifyClone.history history
ON history.user_id = users.id
GROUP BY usuario
ORDER BY usuario;