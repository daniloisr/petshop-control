1. client
  name, address, phone
  has many orders and dogs

  crud (
    except destroy
  )

-
2. dogs
  name, owner, race
  belongs to owner
  has many orders

  crud (
    except destroy
  )
  define all races (find on internet, or register new?)

-
3. order
  client, dog
  belongs_to client and dog

  crud
  create client (remote)
  create dog (remote)

-------
4. home page
  create new order
  register a client
  register a dog

-------
5. general
  i18n everything

-------
Cachorros que estão sendo atendidos
  - Cachorros do dia
