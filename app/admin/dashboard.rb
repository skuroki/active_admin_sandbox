ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    section "Recently updated content" do
      table_for PaperTrail::Version.order('id desc').limit(20) do
        column "Item" do |v| link_to v.item end
        column "Type" do |v| v.item_type.underscore.humanize end
        column "Modified at" do |v| v.created_at.to_s :long end
        column "Admin" do |v| v.whodunnit end
      end
    end
  end # content
end
