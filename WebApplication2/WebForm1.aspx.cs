using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    /* NAME: Nicholas Sim
     * CLASS: CPRG214 ASP.NET LAB: I
     * DATE: January 16, 2019
     */
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCalculate_Click(object sender, EventArgs e)
        {
            OutputField.Text = "Testing";
            char From = 'C';
            char To = 'C';

            double temp;
            bool inputTemp = Double.TryParse(InputTemp.Text, out temp);
            if (FromList.SelectedIndex == 0) //Swap the type for calculation to the type that is required for the calculations
            {
                From = 'C';
            }
            if (FromList.SelectedIndex == 1)
            {
                From = 'F';
            }
            if (FromList.SelectedIndex == 2)
            {
                From = 'K';
            }
            if (ToList.SelectedIndex == 0)
            {
                To = 'C';
            }
            if (ToList.SelectedIndex == 1)
            {
                To = 'F';
            }
            if (ToList.SelectedIndex == 2)
            {
                To = 'K';
            }
            OutputField.Text = ""+ Math.Round(CalculateTemperature(From, To, temp), 2); //Formats to only have 2 decimals Ex: 12.04
        }

        public double CalculateTemperature(char TempIn, char TempOut, double input)
        {
            if(TempIn == 'C' && TempOut == 'C') //Calculate if the Temperature is Celsius to Celsius.
            {
                return input;
            }
            if (TempIn == 'F' && TempOut == 'F') //Calculate if the Temperature is Fahrenheit to Fahrenheit.
            {
                return input;
            }
            if (TempIn == 'K' && TempOut == 'K') //Calculate if the Temperature is Kalvin to Kalvin.
            {
                return input;
            }
            if (TempIn == 'C' && TempOut == 'F') //Calculate if the Celsius is Fahrenheit to Kalvin.
            {
                return ((input * 9 / 5) + 32);
            }
            if (TempIn == 'C' && TempOut == 'K') //Calculate if the Celsius is Kalvin to Kalvin.
            {
                return input + 273.15;
            }
            if (TempIn == 'F' && TempOut == 'C') //Calculate if the Temperature is Fahrenheit to Celsius.
            {
                return ((input - 32) * 5) / 9;
            }
            if (TempIn == 'F' && TempOut == 'K') //Calculate if the Temperature is Fahrenheit to Kalvin.
            {
                return ((input - 32) * 5/9 + 273.15);
            }
            if (TempIn == 'K' && TempOut == 'C') //Calculate if the Temperature is Kalvin to Celsius.
            {
                return (input - 273.15);
            }
            if (TempIn == 'K' && TempOut == 'F') //Calculate if the Temperature is Kalvin to Fahrenheit.
            {
                return ((input - 273.15) * 9 / 5 + 32);
            }
            else
            {
                return input;
            }
        }

        protected void ButtonClear_Click(object sender, EventArgs e)
        {
            OutputField.Text = string.Empty; //Clear all the fields.
            InputTemp.Text = string.Empty;
        }
    }
}