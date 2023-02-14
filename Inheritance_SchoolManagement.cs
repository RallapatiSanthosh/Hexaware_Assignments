using System;
using static Inhertiance_SchoolManagement.Staff;

namespace Inhertiance_SchoolManagement
{
    internal class Program
    {
        static void Main(string[] args)
        {
            NonTeachingStaff nonteachingstaff = new NonTeachingStaff(100, "James", "New York", 9874563215, "B.Com", 35000, "CSE", 56);
            Console.Write(nonteachingstaff.GetInfo());

            Person person = new TeachingStaff(11, "Albert", "London",9856234712, "Asst.professor", 30000, "M.Tech", "C#");
            Console.WriteLine(person.GetInfo());
        }
    }
      public class Person
    {
        public int id;
        public string name;
        public string address;
        public long phone;
        public Person(int id, string name, string address, long phone)
        {
            this.id = id;
            this.name = name;
            this.address = address;
            this.phone = phone;
        }
        public virtual string GetInfo()
        {
            return $"id={id} name:{name} address:{address} phone:{phone}";
        }
    }
        public  class Student : Person
    {
        public int className;
        public float marks;
        public string grade;
        public float fees;
        public Student(int id, string name, string address, long phone, int classname, float marks, string grade, float fees) : base(id, name, address, phone)

        {
            this.className = classname;
            this.marks = marks;
            this.grade = grade;
            this.fees = fees;
        }
        public override string GetInfo()
        {
            return $"{base.GetInfo()} className={className} marks={marks},grade={grade} fees={fees}";
        }
    }
   public class Staff : Person
    {
        public int salary;
        public string designation;

        public Staff(int id, string name, string address, long phone, string designation, int salary) : base(id, name, address, phone)

        {
            this.designation = designation;
            this.salary = salary;

        }
        public override string GetInfo()
        {
            return $"{base.GetInfo()} designation={designation} salary={salary}";
        }
       public class TeachingStaff : Staff
        {
            public string qualification;

            public string subject;

            public TeachingStaff(int id, string name, string address, long phone, string designation, int salary, string qualification, string subject) : base(id, name, address, phone, designation, salary)

            {
                this.qualification = qualification;
                this.subject = subject;

            }
            public override string GetInfo()
            {
                return $"{base.GetInfo()} qualification={qualification} subject={subject}";
            }
        }
        public class NonTeachingStaff : Staff
        {
            public string departmentname;

            public int managerid;

            public NonTeachingStaff(int id, string name, string address, long phone,string designation,int salary, string departmentname, int managerid) : base(id, name, address, phone, designation,salary)

            {
                this.departmentname = departmentname;
                this.managerid = managerid;

            }
            public override string GetInfo()
            {
                return ($"{base.GetInfo()} departmentname={departmentname} managerid={managerid}");
            }
        }
    }
}
