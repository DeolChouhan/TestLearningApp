namespace DataAccessLayer.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class firstmigration_ : DbMigration
    {
        public override void Up()
        {
            RenameTable(name: "dbo.Users", newName: "UsersModel");
        }
        
        public override void Down()
        {
            RenameTable(name: "dbo.UsersModel", newName: "Users");
        }
    }
}
