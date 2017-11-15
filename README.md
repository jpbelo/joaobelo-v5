# joaobelo.pt

### version 5 for joaobelo.pt

Built by hand using only HTML, CSS (actually, I used stylus) and JS (and [particlesJS](https://github.com/VincentGarreau/particles.js/)).

I recently started to look into REACT and REST API's, so I decided to make my new website Fetch the data from an API I made to serve this purpose for training. It's [here](https://api.joaobelo.pt). The API was made with simple PHP that connects to the DB and passes the data as JSON. Also, I only made the GET method since I didn't need to write to the DB.

The API PHP and the database dump are inside the api folder. I decided to use a ``public_`` prefix in the tables names that I wanted public to the API so I could have other tables that serve other purposes (like users for a CMS).
The ``.htaccess`` is only here to point every request to the index.php file.
