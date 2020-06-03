# Quik-Cash-Client

The frontend of the afore mentioned application was made using the latest version of the React library (v16.13.1), as well as the following libraries Redux, redux-thunk, react-redux, and react-router.  Quik-Cash is a Letgo clone of sorts whereby a user can post products, goods, and services and buy products, goods, and services from other users, a user may also post and buy from themselves if they wished to do so.  With that being said this is a self referential relationship domain, there are only 2 models a User model and a Listing model.  Auth with JWT was utilized in the development of this application, it made sense to make sure a user was in fact the user that posted a listing via the use of auth, as well as to only render certain views/access to a user if they were indeed logged in.  The backend of the App "Quik-Cash" was stubbed out using Rails new in api mode, then scaffolded with the models needed to render JSON.  Active model serializer was also used to serialize the data being sent from the backend to the front end. To view the repo for the frontend please see https://github.com/Alendor22/quik-cash-client.
