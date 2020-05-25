namespace DataAccessLayer.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class firstmigration_2 : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Users", "Created_Date");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Users", "Created_Date", c => c.DateTime(nullable: false));
        }
    }
}
