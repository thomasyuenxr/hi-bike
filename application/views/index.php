
<html>

<head>
  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.8.0/dist/leaflet.css" 
    integrity="sha512-hoalWLoI8r4UszCkZ5kL8vayOGVae1oxXe/2A4AO6J9+580uKHDO3JdHb7NzwwzK5xr/Fs0W40kiNHxM9vyTtQ=="
   crossorigin=""/>
   <script src="https://unpkg.com/leaflet@1.8.0/dist/leaflet.js"
   integrity="sha512-BB3hKbKWOc9Ez/TAwyWxNXeoV9c1v6FIeYiBieIWkpLjauysF18NzgR1MBNBXf8/KABdlkX68nAhlwcDFLGPCQ=="
   crossorigin=""></script>
</head>
  
<body>    
    <!--Need to make changes to the navigation bar if there's enough time-->

    <section class="location_map">

      
    </section>

    <article id="map"></article>

    <div class="home-buttons">
      

      <button>
        <a href="<?php echo base_url(); ?>play/start_challenge">Start the challenge</a>
      </button>

      <button>
        <a href="<?php echo base_url(); ?>login">Login</a>
      </button>

      <button>
        <a href="<?php echo base_url(); ?>register">Register</a>
      </button>
    </div>


    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/script.js"></script>
  </body>
</html>