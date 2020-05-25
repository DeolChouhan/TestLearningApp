namespace DataAccessLayer.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class firstmigration_3 : DbMigration
    {
        public override void Up()
        {
            DropPrimaryKey("dbo.Users");
            AlterColumn("dbo.Users", "User_ID", c => c.Int(nullable: false, identity: true));
            AddPrimaryKey("dbo.Users", "User_ID");
        }
        
        public override void Down()
        {
            DropPrimaryKey("dbo.Users");
            AlterColumn("dbo.Users", "User_ID", c => c.String(nullable: false, maxLength: 128));
            AddPrimaryKey("dbo.Users", "User_ID");
        }
    }
}
