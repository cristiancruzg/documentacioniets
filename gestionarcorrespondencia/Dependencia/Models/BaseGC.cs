namespace Dependencia.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class BaseGC : DbContext
    {
        public BaseGC()
            : base("name=BaseGC")
        {
        }

        public virtual DbSet<ANEXOS> ANEXOS { get; set; }
        public virtual DbSet<DEPENDENCIA> DEPENDENCIA { get; set; }
        public virtual DbSet<LOGS_RADICACION> LOGS_RADICACION { get; set; }
        public virtual DbSet<RADICACIONES> RADICACIONES { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<TIPO_ACCESO> TIPO_ACCESO { get; set; }
        public virtual DbSet<TIPO_DOCUMENTOS> TIPO_DOCUMENTOS { get; set; }
        public virtual DbSet<USUARIO_EXTERNO> USUARIO_EXTERNO { get; set; }
        public virtual DbSet<USUARIOS> USUARIOS { get; set; }
        public virtual DbSet<VISTA_RADICACIONES> VISTA_RADICACIONES { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ANEXOS>()
                .Property(e => e.NOMBRE_ANEXO)
                .IsUnicode(false);

            modelBuilder.Entity<ANEXOS>()
                .HasMany(e => e.RADICACIONES)
                .WithRequired(e => e.ANEXOS)
                .HasForeignKey(e => e.ID_ANEXO_FK)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<DEPENDENCIA>()
                .Property(e => e.NOMBRE_DEPENDENCIA)
                .IsUnicode(false);

            modelBuilder.Entity<DEPENDENCIA>()
                .HasMany(e => e.RADICACIONES)
                .WithRequired(e => e.DEPENDENCIA)
                .HasForeignKey(e => e.ID_DEPENDENCIA_FK)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TIPO_ACCESO>()
                .HasMany(e => e.USUARIOS)
                .WithRequired(e => e.TIPO_ACCESO)
                .HasForeignKey(e => e.ID_TIPO_ACCESO_FK)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TIPO_DOCUMENTOS>()
                .Property(e => e.NOMBRE_TIPO_DOC)
                .IsUnicode(false);

            modelBuilder.Entity<TIPO_DOCUMENTOS>()
                .HasMany(e => e.RADICACIONES)
                .WithRequired(e => e.TIPO_DOCUMENTOS)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<USUARIO_EXTERNO>()
                .HasMany(e => e.RADICACIONES)
                .WithRequired(e => e.USUARIO_EXTERNO)
                .HasForeignKey(e => e.ID_USUARIO_EXT_FK)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<USUARIOS>()
                .HasMany(e => e.RADICACIONES)
                .WithRequired(e => e.USUARIOS)
                .HasForeignKey(e => e.ID_USUARIO_FK)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<VISTA_RADICACIONES>()
                .Property(e => e.NOMBRE_DEPENDENCIA)
                .IsUnicode(false);

            modelBuilder.Entity<VISTA_RADICACIONES>()
                .Property(e => e.NOMBRE_ANEXO)
                .IsUnicode(false);

            modelBuilder.Entity<VISTA_RADICACIONES>()
                .Property(e => e.NOMBRE_TIPO_DOC)
                .IsUnicode(false);
        }
    }
}
