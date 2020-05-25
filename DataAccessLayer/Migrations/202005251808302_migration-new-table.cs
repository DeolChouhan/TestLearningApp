namespace DataAccessLayer.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class migrationnewtable : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.UsersSujectModel",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        User_ID = c.Int(nullable: false),
                        Subject_ID = c.Int(nullable: false),
                        Created_Date = c.DateTime(nullable: false),
                        EndDate = c.DateTime(nullable: false),
                        Is_Active = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.UsersSujectModel");
        }
    }
}
