#Christopher Mendoza && Singh Arsy

class TodoList
   attr_reader
   attr_accessor :list

   def initialize(list)
     @list = list
   end

   def get_items(index_number)
     @list[index_number]
   end

   def get_items
     @list
   end

   def get_item(index_number)
     @list[index_number]
   end

   def add_item(new_item)
     @list << new_item
   end

   def delete_item(delete_item)
     @list.delete(delete_item)
   end
end


