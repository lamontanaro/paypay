ActiveAdmin.register Lote do
	permit_params  :number, :owner_id
	index do
		selectable_column
		id_column
		column :number
        column :owner_id do |lote|
            "#{lote.owner.name}  #{lote.owner.surname}"
        end

		actions
	end

	show do |lote|
		attributes_table do
			row :number
            row :owner_id do
                "#{lote.owner.name}  #{lote.owner.surname}"
            end
		end
	end

	form do |f|
		f.inputs do
			f.input :number
            f.input :owner_id, :as => :select, :collection => Owner.all.collect {|owner| ["#{owner.name} - #{owner.surname}", owner.id] }
		end
		f.actions
	end
end