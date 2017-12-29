class ImportCategoryCSV
  include CSVImporter

  model Category

  column :name
end
