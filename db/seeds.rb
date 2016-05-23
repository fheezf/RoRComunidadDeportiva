# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create name: 'Adrián', surname: 'Martínez Villares', role: 'editor', email: 'test@test.com', password: 'test', password_confirmation: 'test'
user2 = User.create name: 'Antonio', role: 'usuario', email: 'test2@test.com', password: 'test', password_confirmation: 'test'

teams = Team.create [
              {name: 'Real Madrid'},
              {name: 'Barcelona'},
              {name: 'Atlético'},
              {name: 'Sevilla'},
              {name: 'Valencia'},
              {name: 'Villareal'},
              {name: 'Málaga'},
              {name: 'Celta'},
              {name: 'Eibar'},
              {name: 'Athletic'},
              {name: 'Espanyol'},
              {name: 'Rayo'},
              {name: 'Getafe'},
              {name: 'Real Sociedad'},
              {name: 'Levante'},
              {name: 'Deportivo'},
              {name: 'Granada'},
              {name: 'Córdoba'},
              {name: 'Almería'},
              {name: 'Elche'}]

locations = Location.create [
                      {province: 'Álava'},
                      {province: 'Albacete'},
                      {province: 'Alicante'},
                      {province: 'Almería'},
                      {province: 'Principado de Asturias'},
                      {province: 'Ávila'},
                      {province: 'Badajoz'},
                      {province: 'Barcelona'},
                      {province: 'Burgos'},
                      {province: 'Cáceres'},
                      {province: 'Cádiz'},
                      {province: 'Cantabria'},
                      {province: 'Castellón'},
                      {province: 'Ciudad Real'},
                      {province: 'Córdoba'},
                      {province: 'La Coruña'},
                      {province: 'Cuenca'},
                      {province: 'Gerona'},
                      {province: 'Granada'},
                      {province: 'Guadalajara'},
                      {province: 'Guipúzcoa'},
                      {province: 'Huelva'},
                      {province: 'Huesca'},
                      {province: 'Islas Baleares'},
                      {province: 'Jaén'},
                      {province: 'León'},
                      {province: 'Lérida'},
                      {province: 'Lugo'},
                      {province: 'Madrid'},
                      {province: 'Málaga'},
                      {province: 'Región de Murcia'},
                      {province: 'Comunidad Foral de Navarra'},
                      {province: 'Orense'},
                      {province: 'Palencia'},
                      {province: 'Las Palmas'},
                      {province: 'Pontevedra'},
                      {province: 'La Rioja'},
                      {province: 'Salamanca'},
                      {province: 'Segovia'},
                      {province: 'Sevilla'},
                      {province: 'Soria'},
                      {province: 'Tarragona'},
                      {province: 'Santa Cruz de Tenerife'},
                      {province: 'Teruel'},
                      {province: 'Toledo'},
                      {province: 'Valencia'},
                      {province: 'Valladolid'},
                      {province: 'Vizcaya'},
                      {province: 'Zamora'},
                      {province: 'Zaragoza'},
                      {province: 'Melilla'},
                      {province: 'Ceuta'}]



competition = Competition.create name: 'Liga BBVA', date_start: '2014-08-23', date_end: '2015-05-23'


clashes = Clash.create [
              {local_team: Team.find_by_id(1), foreign_team: Team.find_by_id(18), date: '2014-08-25', local_score: '5', foreign_score: '0'},
              {local_team: Team.find_by_id(12), foreign_team: Team.find_by_id(3), date: '2014-08-25', local_score: '1', foreign_score: '0'},
              {local_team: Team.find_by_id(10), foreign_team: Team.find_by_id(7), date: '2014-08-23', local_score: '2', foreign_score: '3'},
              {local_team: Team.find_by_id(4), foreign_team: Team.find_by_id(5), date: '2014-08-23', local_score: '0', foreign_score: '4'},
              {local_team: Team.find_by_id(17), foreign_team: Team.find_by_id(16), date: '2014-08-23', local_score: '2', foreign_score: '4'},
              {local_team: Team.find_by_id(19), foreign_team: Team.find_by_id(11), date: '2014-08-23', local_score: '2', foreign_score: '1'},
              {local_team: Team.find_by_id(9), foreign_team: Team.find_by_id(14), date: '2014-08-24', local_score: '1', foreign_score: '0'},
              {local_team: Team.find_by_id(2), foreign_team: Team.find_by_id(20), date: '2014-08-24', local_score: '5', foreign_score: '4'},
              {local_team: Team.find_by_id(8), foreign_team: Team.find_by_id(13), date: '2014-08-24', local_score: '1', foreign_score: '3'},
              {local_team: Team.find_by_id(15), foreign_team: Team.find_by_id(6), date: '2014-08-24', local_score: '0', foreign_score: '1'},

              {local_team: Team.find_by_id(1), foreign_team: Team.find_by_id(15), date: '2014-08-25', local_score: '2', foreign_score: '2'},
              {local_team: Team.find_by_id(12), foreign_team: Team.find_by_id(14), date: '2014-08-25', local_score: '1', foreign_score: '0'},
              {local_team: Team.find_by_id(11), foreign_team: Team.find_by_id(4), date: '2014-08-23', local_score: '2', foreign_score: '3'},
              {local_team: Team.find_by_id(6), foreign_team: Team.find_by_id(5), date: '2014-08-23', local_score: '3', foreign_score: '4'},
              {local_team: Team.find_by_id(17), foreign_team: Team.find_by_id(19), date: '2014-08-23', local_score: '4', foreign_score: '4'},
              {local_team: Team.find_by_id(20), foreign_team: Team.find_by_id(10), date: '2014-08-23', local_score: '0', foreign_score: '1'},
              {local_team: Team.find_by_id(9), foreign_team: Team.find_by_id(8), date: '2014-08-24', local_score: '0', foreign_score: '0'},
              {local_team: Team.find_by_id(2), foreign_team: Team.find_by_id(7), date: '2014-08-24', local_score: '3', foreign_score: '0'},
              {local_team: Team.find_by_id(3), foreign_team: Team.find_by_id(13), date: '2014-08-24', local_score: '3', foreign_score: '3'},
              {local_team: Team.find_by_id(15), foreign_team: Team.find_by_id(16), date: '2014-08-24', local_score: '1', foreign_score: '1'}]





competition.teams << teams
competition.clashes << clashes


