Sequel.migration do
  up do
    create_table(:wedding_tasks) do
      primary_key :id
      String :name
    end
  end

  down do
    drop_table(:wedding_tasks)
  end
end