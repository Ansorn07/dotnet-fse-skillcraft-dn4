namespace JwtAuthenticationAPI.Models
{
    public class Employee
    {
        public int Id { get; set; }
        public required string Name { get; set; }
        public required string Department { get; set; }
        public decimal Salary { get; set; }
    }
}
