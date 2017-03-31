namespace :accounts do
  task remove_unclaimed: :environment do
    puts "Deleting #{Account.where(owner_id: nil).length} accounts"
    Account.where(owner_id: nil).each do |a|
      a.destroy
    end
  end
end
