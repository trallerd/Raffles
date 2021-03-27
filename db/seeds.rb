User.create name: 'Camila', email: 'camila@camila.com', password: 'abc123', admin: false
User.create name: 'Bruno', email: 'bruno@bruno.com', password: 'qwe789', admin: false
User.create name: 'Mauricio', email: 'mauricio@mauricio.com', password: 'asd456', admin: true

Type.create description: 'Type 1', inicial_number: 2, step: 1, ticket_quantities: 3
Type.create description: 'Type 2', inicial_number: 1, step: 1, ticket_quantities: 2
Type.create description: 'Type 3', inicial_number: 3, step: 1, ticket_quantities: 5
