SELECT s.name FROM subjects s, books_subjects bs, books b WHERE s.id = bs.subject AND b.id = bs.book AND
b.title = "Atomic Habits";