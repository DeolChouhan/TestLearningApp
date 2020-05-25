namespace DataAccessLayer.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class firstmigration_4 : DbMigration
    {
        public override void Up()
        {
            DropTable("dbo.UsersModel");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.UsersModel",
                c => new
                    {
                        User_ID = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                        Email = c.String(),
                        Password = c.String(),
                        Is_Active = c.Boolean(nullable: false),
                        Role_Id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.User_ID);
            
        }
    }
}
