using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Asp_Car
{
    public class Business
    {
        CarsEntities obj = new CarsEntities();
        User us = new User();
        Main cars = new Main();


        public void AddReg(string Password, string Username)//it add the data to user table
        {

            us.Username = Username;
            us.Password = Password;

            obj.Users.Add(us);
            obj.SaveChanges();

        }
        public void AddMain(string color, string Name , string Make, string Year, int e_id)//it adds the data to main table 
        {
            cars.Color = color;
            cars.Name = Name;
            cars.Make = Make;
            cars.Year = Year;
            cars.Engine_id = e_id;
            obj.Mains.Add(cars);
            obj.SaveChanges();



        }
        public void Del_main(int Car_ID)
        {

            using (CarsEntities cars = new CarsEntities())
            {
                //it deletes from main table

                Main  obj = cars.Mains .First(x => x.Car_id  == Car_ID);
                cars.Mains.Remove(obj);
                cars.SaveChanges();


            }

        }
        public void CarChange(int Car_ID,string color, string Name, string Make, string Year, int e_id)
        {
            using (var db = new CarsEntities())
            {
                var res = db.Mains.SingleOrDefault(b => b.Car_id == Car_ID);
                if (res != null)
                {
                    res.Color = color;
                    res.Name = Name;
                    res.Make = Make;
                    res.Year = Year;
                    res.Engine_id = e_id;

                    //it updates the old data 
                    db.SaveChanges();

                }



            }
        }
    }
}