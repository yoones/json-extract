json-extract.rb
===

Extract a subset of a json file.

    __$ cat test.json__
    {"identity": {"firstname": "Younes", "lastname": "SERRAJ"}, "skills": ["C", "C++", "Ruby", "Google"], "love_to_code": true}
    __$ ./json-extract.rb /__
    {"identity"=>{"firstname"=>"Younes", "lastname"=>"SERRAJ"}, "skills"=>["C", "C++", "Ruby", "Google"], "love_to_code"=>true}
    __$ ./json-extract.rb identity__
    {"firstname"=>"Younes", "lastname"=>"SERRAJ"}
    __$ ./json-extract.rb test.json skills/2__
    Ruby
