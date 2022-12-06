ActiveAdmin.register Concept do
	permit_params  :name, :price
	index do
		selectable_column
		id_column
		column :name
		column :price
		actions
	end

	show do |owner|
		attributes_table do
			row :name
			row :price
		end
	end

	form do |f|
		f.inputs do
			f.input :name
			f.input :price
		end
		f.actions
	end
end