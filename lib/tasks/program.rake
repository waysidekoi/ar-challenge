namespace :program do
  desc "a simple place to exercice the solution"
  task :run => :environment do
    puts "Showing off my ar-challenge solution..."
    # put your program here, run from command line with `rake program:run`

    g = Graph.create
    head_node1 = g.nodes.create(name: "head node 1")
    head_node2 = g.nodes.create(name: "head node 2")

    first_link = head_node1.links.create(name: "first link")
    first_link.graph = g
    first_link.save

    head_node2.links << first_link

    node2 = first_link.nodes.create(name: "body node 1")
    node2.graph = g
    node2.save

    link2 = node2.links.create(name: "2nd link")
    link2.graph = g
    link2.save

    node3 = link2.nodes.create(name: "tail node")
    node3.graph = g
    node3.save


    puts "Here are the parent nodes and children nodes for 'body node 1', the second node on the first line\n\n"
    n = Node.find(3) 
    puts n.parent_and_children_nodes
  end
end

