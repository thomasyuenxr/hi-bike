<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Getapi_model extends CI_Model
{
    function get_rack_api() {
        $api_url = "https://www.data.brisbane.qld.gov.au/data/api/3/action/datastore_search?resource_id=4a67a16d-ffc7-4831-a77b-64d8ac42459e&limit=200";
    
        $data = file_get_contents($api_url);

        return json_decode($data, true);

    }

    function get_record() {
        $data = $this->get_rack_api();

        $present_data = $this->db->get('rack');

        if($present_data->num_rows > 0) {
            if(is_array($data)) {

                // Iterate over the records in the array
                foreach($data["result"]["records"] as $recordKey => $recordValue) {
    
                    $recordId = $recordValue["_id"];
                    $recordSuburb = $recordValue["Suburb"];
                    $recordAddress = $recordValue["Address"];
                    $recordLocation = $recordValue["Location"];
                    $recordCapacity = $recordValue["Capacity"];
                    $recordRackType = $recordValue["Rack type"];
                    $recordLatitude = $recordValue["Latitude"];
                    $recordLongitude = $recordValue["Longitude"];
    
    
                    $result = array(
                        'rackid' => $recordId,
                        'suburb' => $recordSuburb,
                        'address' => $recordAddress,
                        'location' => $recordLocation,
                        'capacity' => $recordCapacity,
                        'racktype' => $recordRackType,
                        'lat' => $recordLatitude,
                        'lon' => $recordLongitude
                    );
    
                    $this->db->replace('rack', $result);
                }
            }
        }


        if(is_array($data)) {

            // Iterate over the records in the array
            foreach($data["result"]["records"] as $recordKey => $recordValue) {

                $recordId = $recordValue["_id"];
                $recordSuburb = $recordValue["Suburb"];
                $recordAddress = $recordValue["Address"];
                $recordLocation = $recordValue["Location"];
                $recordCapacity = $recordValue["Capacity"];
                $recordRackType = $recordValue["Rack type"];
                $recordLatitude = $recordValue["Latitude"];
                $recordLongitude = $recordValue["Longitude"];


                $result = array(
                    'rackid' => $recordId,
                    'suburb' => $recordSuburb,
                    'address' => $recordAddress,
                    'location' => $recordLocation,
                    'capacity' => $recordCapacity,
                    'racktype' => $recordRackType,
                    'lat' => $recordLatitude,
                    'lon' => $recordLongitude
                );

                $this->db->insert('rack', $result);
            }
        }
    }

 

}

?>