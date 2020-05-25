namespace DataAccessLayer.Migrations
{
    using Models;
    using System;
    using System.Collections.Generic;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<DataAccessLayer.Context.DBContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(DataAccessLayer.Context.DBContext context)
        {
            #region Add Subjects

            List<Subjects> Subjects = new List<Subjects>();
            Subjects.Add(new Subjects() {
                Subject = "English",
                IS_Active = true
            });
            Subjects.Add(new Subjects()
            {
                Subject = "Hindi",
                IS_Active = true
            });
            Subjects.Add(new Subjects()
            {
                Subject = "Punjabi",
                IS_Active = true
            });
            Subjects.Add(new Subjects()
            {
                Subject = "Maths",
                IS_Active = true
            });
            Subjects.Add(new Subjects()
            {
                Subject = "Science",
                IS_Active = true
            });
            Subjects.Add(new Subjects()
            {
                Subject = "Sanskrit",
                IS_Active = true

            });
            foreach (var item in Subjects)
            {
                context.Subjects.AddOrUpdate(p => p.Subject, item);
            }
            context.SaveChanges();
            #endregion

            #region Add Roles

            List<Role> Role = new List<Role>();
            Role.Add(new Role()
            {
                Role_Type = "Admin",
                IS_Active = true
            });
            Role.Add(new Role()
            {
                Role_Type = "Student",
                IS_Active = true
            });

            foreach (var item in Role)
            {
                context.Roles.AddOrUpdate(p => p.Role_Type, item);
            }
            context.SaveChanges();
            #endregion

            //#region Add Users
            List<User> Users = new List<User>();
            Users.Add(new User()
            {
                Name = "Student",
                Email = "Student@gmail.com",
                Password = "Test123",
                IS_Active = true,
                Role_Id = 1

            });

            Users.Add(new User()
            {
                Name = "Admin",
                Email = "Admin@gmail.com",
                Password = "Test123",
                IS_Active = true,
                Role_Id = 2

            });
            foreach (var item in Users)
            {
                context.Users_Table.AddOrUpdate(p => p.Email, item);
            }
            context.SaveChanges();
            //#endregion
        }

    }
}
