select m.title from movies as m,people as p,stars as s where s.movie_id = m.id and s.person_id = p.id and m.id in (select m.id from movies as m,people as p,stars as s where s.movie_id = m.id and s.person_id = p.id and p.name = "Johnny Depp") and  p.name = "Helena Bonham Carter";