using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace BulkWeb
{
    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<Missing> Missings { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Missing>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Missing>()
                .Property(e => e.Gender)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Missing>()
                .Property(e => e.Wearing)
                .IsUnicode(false);

            modelBuilder.Entity<Missing>()
                .Property(e => e.LastLocation)
                .IsUnicode(false);

            modelBuilder.Entity<Missing>()
                .Property(e => e.Image)
                .IsUnicode(false);
        }
    }
}
