using Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Context
{
    public class DBContext : DbContext
    {
        public DBContext()
            : base("DBContext")
        {
            //Database.SetInitializer<DbContext>(new DBContextInitializer());
        }

        public DbSet<Subjects> Subjects { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<User> Users_Table { get; set; }
        public DbSet<UsersSujectModel> UsersSuject_Table { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }
    }
}
