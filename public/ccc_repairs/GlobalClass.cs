using System;
using System.Collections.Generic;
using System.Web;

namespace CCC_Repairs
{
    static class GlobalClass
    {        
        private static string strUserID = "";
        private static string strManager = "";
        private static string strFacility = "";
        private static string strEmail = "";
        //private static string strManagerEmail = "wease7@gmail.com";
        private static string strManagerEmail = "toddwaldron6@gmail.com";

        public static string strGlobalManagerEmail
        {
            get
            {
                return strManagerEmail;
            }

            set
            {
                strManagerEmail = value;
            }
        }

        public static string strGlobalUserID
        {
            get
            {
                return strUserID;
            }

            set
            {
                strUserID = value;
             }
        }

        public static string strGlobalManager
        {
            get
            {
                return strManager;
            }

            set
            {
                strManager = value;
            }
        }

        public static string strGlobalFacility
        {
            get
            {
                return strFacility;
            }

            set
            {
                strFacility = value;
            }
        }

        public static string strGlobalEmail
        {
            get
            {
                return strEmail;
            }

            set
            {
                strEmail = value;
            }
        }
    }
}