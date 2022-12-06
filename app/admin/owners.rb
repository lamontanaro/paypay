ActiveAdmin.register Owner do
	permit_params  :name, :surname, :address, :email, :phone
	index do
		selectable_column
		id_column
		column :name
		column :surname
		column :email
		column :phone
		column :address
		column "lotes" do |owner|
			"#{owner.my_lotes}"
		end

		actions
	end

	show do |owner|
		attributes_table do
			row :name
			row :surname
			row :address
			row :email
			row :phone
		end
		panel "Lotes" do
			table_for owner.lotes do
				column :number
			end
		end
	end

	form do |f|
		f.inputs do
			f.input :name
			f.input :surname
			f.input :address
			f.input :email
			f.input :phone
		end
		f.actions
	end
end