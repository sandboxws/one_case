# encoding: utf-8
puts 'EMPTY THE MONGODB DATABASE'
Mongoid.master.collections.reject { |c| c.name =~ /^system/}.each(&:drop)

(1..20).each do |i|
  Organization.create name: "جمعية رسالة #{i}",
  description: 'حسني مبارك يعاني من أمراض عديدة مجهولة النوع والمصدر ويوجد بعض التشككات إنه حوار بس على رأي غسان مطر؛ اعمل الصح!',
  extra_description: 'هام جدا:ً رقم حساب الجمعية هو رقم عام و موحد     لكل الأنشطة و لكل الفروع فرجاء الاتصال لتحديد جهة     و مبلغ الصرف.',
  fund_raised: 20000,
  donators_count: 150,
  days_count: 90,
  registration_number: '010001022332325478',
  address: 'ش الدقي, الجيزة',
  phone_numbers: '2332325478, 2332325478',
  bank_account_number: 'CIB1234556'
end