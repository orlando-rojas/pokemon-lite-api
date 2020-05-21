# Pokemon Lite API

NiArtic Labs is an American software development company based in San Francisco.
If you Google them you could find a lot of resources about them. During these
days they had a big issue with their servers and lost all their data. They have
heard about `Codeable Ventures` and their talented developer team and has asked
our help to build, from scratch, their most famous product called Pokemon Go.
Your team is in charge of delivering a sub-module of the `Pokemon Lite API`.

During your last meeting with the Main Product Manager it was agreed that the
database will be implemented under the following requirements.

> Our `Lite API` will focus on Trainers and Pokemons. From trainers we want to
> track a their name, gender, age, home region and their team member status
> (that could be 'active' or 'inactive'). For example one of the best Trainers
> and active Team Members is `Hash Ketchup`, a 16 years old boy from Pallet
> Town. During his career he has been capturing a lot of Pokemons like Pikachu,
> Charmander and Bulbasaur. The way NiArtic Labs tracks a `Pokemon` is trough
> its name, base experience, main_type, main_ability, and his `Trainer`. Finally
> but not least, every `Trainer` owns a battle record. For example, Hash Ketchup
> has 30 wins, 4 losses.

## Tasks:

### 1. Build the Entity Relationship Diagram (ERD)

In accordance with the requirements presented by NiArtic Labs, your team must
build an `ERD` proposal. This proposal will be presented at the Codeable
Ventures board meeting (check your calendar). The purpose of this meeting is to
converge on a common ERD for everyone.

### 2. Create the `models` based on the agreed version of the `ERD`

Fork [this repo](https://github.com/codeableorg/pokemon-lite-api) to start
working on the project. This repo consist in a base Rails app created with:

```bash
$ rails new pokemon-lite-api -d postgresql --api --skip-test
```

It is possible that you will need to create a `join table` based on a
`many-to-many` relationship on your ERD. Explores
[this section](https://guides.rubyonrails.org/association_basics.html#the-has-and-belongs-to-many-association)
of the Rails Guides. You can also check
[this article](http://joshfrankel.me/blog/create-a-many-to-many-activerecord-association-in-ruby-on-rails/)
to learn more about it.

> Tip: Try first create the base model and use the Rails Console to check that
> everything is working fine. Just then, create a new migration for the join
> table and add the required associations on your models.

### 3. Request access and add seed data to your database

Once your models are working properly (meaning you can create, find, update and
destroy records for all your models on the Rails console), request to the Main
Product Manager (Diego of course), access to the repo where the seed data is
stored. Check the readme file and complete all the steps. You will be ready to
procced when the `seeds.rb` file is being working correctly.

### 4. Implement a Restful API for main resources

This task includes the creation of the controller and action methods for each
resource and their respective routes.

The result should include:

For the resource Pokemon:\
GET . . . /pokemons . . . . . List all the pokemons\
GET . . . /pokemons/:id . . . Show one pokemon\
POST . . . /pokemons . . . . . Create a pokemon\
PUT . . . . /pokemons/:id . . . Update a pokemon\
DELETE . . . /pokemons/:id . . . Destroy a pokemon

Same for Trainer and Battle Record.

### 5. [Optional] Implement a Restful API for nested resources

For the nested resource Trainer->Pokemon:\
GET . . . /trainers/:id/pokemons . . . . . List all the pokemons of one trainer\
GET . . . /trainers/:id/pokemon/:id . . . Show one pokemon of one trainer\
POST . . . /trainers/:id/pokemons . . . . . Create a pokemon for one trainer\
PUT . . . . /trainers/:id/pokemons/:id . . . Update a pokemon for one trainer\
DELETE . . . /trainers/:id/pokemons/:id . . . Destroy a pokemon for one trainer

Same the reverse scenario Pokemon->Trainer.

### 6. Create a Pull Request to the master branch of the codeable repo.

### 7. Have a great weekend!
