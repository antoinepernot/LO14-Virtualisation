nbusers=$(sqlite3 -column database.db "SELECT login FROM users;" | wc -l)
    users=$(sqlite3 -column database.db "SELECT login FROM users;")
    user=$(whiptail --title "rvsh - Modification d'utilisateurs" --menu "Choisissez les comptes utilisateurs à modifier : " 20 78 ${nbhosts} ${hosts} 3>&1 1>&2 2>&3)