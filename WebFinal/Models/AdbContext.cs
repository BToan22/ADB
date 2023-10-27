using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace WebFinal.Models;

public partial class AdbContext : DbContext
{
    public AdbContext()
    {
    }

    public AdbContext(DbContextOptions<AdbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<AcademicLevel> AcademicLevels { get; set; }

    public virtual DbSet<Contract> Contracts { get; set; }

    public virtual DbSet<Employee> Employees { get; set; }

    public virtual DbSet<Position> Positions { get; set; }

    public virtual DbSet<Province> Provinces { get; set; }

    public virtual DbSet<SalaryDetail> SalaryDetails { get; set; }

    public virtual DbSet<Shift> Shifts { get; set; }

    public virtual DbSet<User> Users { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server = LAPTOP-MPPBE2T0; Database=ADB;User id=danh;password=123;Trusted_Connection=True;TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<AcademicLevel>(entity =>
        {
            entity.HasKey(e => e.AcaId);

            entity.Property(e => e.AcaId)
                .HasMaxLength(50)
                .HasColumnName("Aca_ID");
            entity.Property(e => e.DateOfExpiry).HasColumnType("date");
            entity.Property(e => e.DateOfIssue).HasColumnType("date");
            entity.Property(e => e.DegreeName).HasMaxLength(50);
            entity.Property(e => e.DegreeType).HasMaxLength(50);

            entity.HasMany(d => d.Emps).WithMany(p => p.Acas)
                .UsingEntity<Dictionary<string, object>>(
                    "EmpAcaLevel",
                    r => r.HasOne<Employee>().WithMany()
                        .HasForeignKey("EmpId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK_Emp_Aca_Levels_Employees"),
                    l => l.HasOne<AcademicLevel>().WithMany()
                        .HasForeignKey("AcaId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK_Emp_Aca_Levels_AcademicLevels"),
                    j =>
                    {
                        j.HasKey("AcaId", "EmpId");
                        j.ToTable("Emp_Aca_Levels");
                    });
        });

        modelBuilder.Entity<Contract>(entity =>
        {
            entity.HasKey(e => e.ContractId).HasName("PK_Contract");

            entity.Property(e => e.ContractId)
                .HasMaxLength(50)
                .HasColumnName("ContractID");
            entity.Property(e => e.ContractDescription).HasMaxLength(50);
        });

        modelBuilder.Entity<Employee>(entity =>
        {
            entity.HasKey(e => e.EmpId);

            entity.Property(e => e.EmpId)
                .HasMaxLength(50)
                .HasColumnName("EmpID");
            entity.Property(e => e.ContractId)
                .HasMaxLength(50)
                .HasColumnName("ContractID");
            entity.Property(e => e.Dob)
                .HasColumnType("date")
                .HasColumnName("DOB");
            entity.Property(e => e.Name).HasMaxLength(50);
            entity.Property(e => e.Phone).HasMaxLength(50);
            entity.Property(e => e.PositionId)
                .HasMaxLength(50)
                .HasColumnName("PositionID");

            entity.HasOne(d => d.Contract).WithMany(p => p.Employees)
                .HasForeignKey(d => d.ContractId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Employees_Contract");

            entity.HasOne(d => d.Position).WithMany(p => p.Employees)
                .HasForeignKey(d => d.PositionId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Employees_Position");

            entity.HasMany(d => d.Attendances).WithMany(p => p.Emps)
                .UsingEntity<Dictionary<string, object>>(
                    "WorkIn",
                    r => r.HasOne<Shift>().WithMany()
                        .HasForeignKey("AttendanceId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK_WorkIns_Shifts"),
                    l => l.HasOne<Employee>().WithMany()
                        .HasForeignKey("EmpId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK_WorkIns_Employees"),
                    j =>
                    {
                        j.HasKey("EmpId", "AttendanceId");
                    });
        });

        modelBuilder.Entity<Position>(entity =>
        {
            entity.HasKey(e => e.PosId).HasName("PK_Position");

            entity.Property(e => e.PosId)
                .HasMaxLength(50)
                .HasColumnName("PosID");
            entity.Property(e => e.PosName).HasMaxLength(50);
        });

        modelBuilder.Entity<Province>(entity =>
        {
            entity.HasNoKey();

            entity.Property(e => e.HeadCity).HasMaxLength(255);
            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Province1)
                .HasMaxLength(255)
                .HasColumnName("Province");
            entity.Property(e => e.Section).HasMaxLength(255);
        });

        modelBuilder.Entity<SalaryDetail>(entity =>
        {
            entity.HasKey(e => new { e.EmpId, e.Date }).HasName("PK_SalaryDetail");

            entity.Property(e => e.EmpId)
                .HasMaxLength(50)
                .HasColumnName("EmpID");
            entity.Property(e => e.Date).HasColumnType("date");

            entity.HasOne(d => d.Emp).WithMany(p => p.SalaryDetails)
                .HasForeignKey(d => d.EmpId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_SalaryDetails_Employees");
        });

        modelBuilder.Entity<Shift>(entity =>
        {
            entity.HasKey(e => e.AttendanceId);

            entity.Property(e => e.AttendanceId)
                .HasMaxLength(50)
                .HasColumnName("AttendanceID");
            entity.Property(e => e.Day).HasColumnType("date");
            entity.Property(e => e.EndTime).HasColumnType("datetime");
            entity.Property(e => e.Name).HasMaxLength(50);
            entity.Property(e => e.StartTime).HasColumnType("datetime");
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.City).HasMaxLength(50);
            entity.Property(e => e.Fullname).HasMaxLength(50);
            entity.Property(e => e.Password).HasMaxLength(50);
            entity.Property(e => e.Username).HasMaxLength(50);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
