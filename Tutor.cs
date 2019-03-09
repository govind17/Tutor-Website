using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tutor_Website
{
    public class Tutor : ITutor
    {
        private string _name, _alma, _loc, _type, _sub, _std, _lm, _eid, _mob,_pass,_pin,_teachingstr1, _teachingstr2, _teachingstr3;
        private char _g;
        private double _rating, _tlat, _tlong, _lmlat, _lmlong;
        private int _id, _fee, _age, _exp;
        public int id
        {
            get
            {
                return _id;
            }
            set
            {
                this._id = value;
            }
        }
        public string name
        {
            get
            {
                return _name;
            }
            set
            {
                this._name = value;
            }
        }
        public string alma
        {
            get
            {
                return this._alma;
            }
            set
            {
                this._alma = value;
            }
        }

        public string loc
        {
            get
            {
                return this._loc;
            }
            set
            {
                this._loc = value;
            }
        }

        public string lm
        {
            get
            {
                return this._lm;
            }
            set
            {
                this._lm = value;
            }
        }

        public string type
        {
            get
            {
                return this._type;
            }
            set
            {
                this._type = value;
            }
        }

        public string sub
        {
            get
            {
                return this._sub;
            }
            set
            {
                this._sub = value;
            }
        }

        public string std
        {
            get
            {
                return this._std;
            }
            set
            {
                this._std = value;
            }
        }
        public string pin
        {
            get
            {
                return this._pin;
            }
            set
            {
                this._pin = value;
            }
        }

        public char g
        {
            get
            {
                return this._g;
            }
            set
            {
                this._g = value;
            }
        }

        public double rating
        {
            get
            {
                return this._rating;
            }

            set
            {
                this._rating = value;
            }
        }

        public double tlat
        {
            get
            {
                return this._tlat;
            }
            set
            {
                this._tlat = value;
            }
        }

        public double tlong
        {
            get
            {
                return this._tlong;
            }
            set
            {
                this._tlong = value;
            }
        }

        public double lmlat
        {
            get
            {
                return this._lmlat;
            }
            set
            {
                this._lmlat = value;
            }
        }
        public string pass
        {
            get
            {
                return this._pass;
            }
            set
            {
                this._pass = value;
            }
        }

        public double lmlong
        {
            get
            {
                return this._lmlong;
            }
            set
            {
                this._lmlong = value;
            }
        }

        public int fee
        {
            get
            {
                return this._fee;
            }
            set
            {
                this._fee = value;
            }
        }

        public int age
        {
            get
            {
                return this._age;
            }
            set
            {
                this._age = value;
            }
        }

        public int exp
        {
            get
            {
                return this._exp;
            }
            set
            {
                this._exp = value;
            }
        }

        public string eid
        {
            get
            {
                return this._eid;
            }

            set
            {
                this._eid = value;
            }
        }

        public string mob
        {
            get
            {
                return this._mob;
            }

            set
            {
                this._mob = value;
            }
        }
        public string teachingstr1
        {
            get
            {
                return this._teachingstr1;
            }
            set
            {
                this._teachingstr1 = value;
            }
        }
        public string teachingstr2
        {
            get
            {
                return this._teachingstr2;
            }
            set
            {
                this._teachingstr2 = value;
            }
        }
        public string teachingstr3
        {
            get
            {
                return this._teachingstr3;
            }
            set
            {
                this._teachingstr3 = value;
            }
        }
        public string setteachingstr()
        {
            return this._sub + " of " + this._std + " at " + this._loc + " near " + this._lm;
        }
    }
    
}
