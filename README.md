# Raffles

## Applications developed using Ruby on Rails

- [Video](https://www.youtube.com/watch?v=qE973kml_bQ)
  - [Tree of the video](https://github.com/trallerd/Raffles/tree/91b9d995c0a724a36a92f7e4b21f6c256e5a16e5)
- [Heroku](https://trallerd-raffles.herokuapp.com/) (Application with problems w/ Redis)


A User can register and, after that, start a new raffle or access the page of an existing raffle.

A Raffle has a title, detailed textual information (multi-line to register and show), various business dates and ticket value.

When registering a new raffle, 1,000 tickets are generated (asynchronously with a job - background worker), numbered from 1 to 1,000.

When registering a raffle, the user informs which are the Prizes that will be offered to each one of the winners (first, second, third, ...). Note: A raffle can have a dynamic amount of prizes (at least 1).

On the page of each raffle, in addition to the details of the same, users view ALL the existing tickets for it, differentiating those purchased from those not purchased.

On this same page, when clicking on a specific Ticket, the user sees a modal window with details of the same (number, price, date of the draw, etc., and options to buy or cancel - use a partial). The purchase action is done via AJAX. A single ticket cannot be purchased by more than one user, but a user can buy as many tickets as he wants from the same raffle.

has access to a dashboard where he sees all his tickets and raffles.
