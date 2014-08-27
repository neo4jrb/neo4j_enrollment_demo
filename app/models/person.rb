class Person 
  include Neo4j::ActiveNode

  property :name
  property :age, type: Integer

end
