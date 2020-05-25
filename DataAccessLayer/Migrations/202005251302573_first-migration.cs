namespace DataAccessLayer.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class firstmigration : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Role",
                c => new
                    {
                        Role_ID = c.Int(nullable: false, identity: true),
                        Role_Type = c.String(),
                        IS_Active = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.Role_ID);
            
            CreateTable(
                "dbo.Subjects",
                c => new
                    {
                        Subject_ID = c.Int(nullable: false, identity: true),
                        Subject = c.String(),
                        IS_Active = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.Subject_ID);
            
            CreateTable(
                "dbo.Users",
                c => new
                    {
                        User_ID = c.String(nullable: false, maxLength: 128),
                        Name = c.String(),
                        Email = c.String(),
                        Password = c.String(),
                        Is_Active = c.Boolean(nullable: false),
                        Created_Date = c.DateTime(nullable: false),
                        Role_Id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.User_ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Users");
            DropTable("dbo.Subjects");
            DropTable("dbo.Role");
        }
    }
}
