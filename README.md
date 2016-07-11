json-extract.rb
===

Extract a subset of a json file.

    $ cat test.json
    {"identity": {"firstname": "Younes", "lastname": "SERRAJ"}, "skills": ["C", "C++", "Ruby", "Google"], "love_to_code": true}
    $ ./json-extract.rb /
    {"identity"=>{"firstname"=>"Younes", "lastname"=>"SERRAJ"}, "skills"=>["C", "C++", "Ruby", "Google"], "love_to_code"=>true}
    $ ./json-extract.rb identity
    {"firstname"=>"Younes", "lastname"=>"SERRAJ"}
    $ ./json-extract.rb test.json skills/2
    Ruby
