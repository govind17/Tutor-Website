using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tutor_Website
{
    public class TeachingSes : ITeachingSes
    {
        private string _tuname, _stname, _time, _stdate, _days, _loc, _lm, _type, _sub, _std,_status;
        private char _stug;
        private int _stuid, _stuage, _tid;
        public int stuid
        {
            get
            {
                return _stuid;
            }
            set
            {
                this._stuid = value;
            }
        }
        public int tid
        {
            get
            {
                return _tid;
            }
            set
            {
                this._tid = value;
            }
        }
        public string tuname
        {
            get
            {
                return _tuname;
            }
            set
            {
                this._tuname = value;
            }
        }
        public string stname
        {
            get
            {
                return _stname;
            }
            set
            {
                this._stname = value;
            }
        }
        public string status
        {
            get
            {
                return _status;
            }
            set
            {
                this._status = value;
            }
        }
        public char stg
        {
            get
            {
                return _stug;
            }
            set
            {
                this._stug = value;
            }
        }
        public int stuage
        {
            get
            {
                return _stuage;
            }
            set
            {
                this._stuage = value;
            }
        }
        public string time
        {
            get
            {
                return _time;
            }
            set
            {
                this._time = value;
            }
        }
        public string stdate
        {
            get
            {
                return _stdate;
            }
            set
            {
                this._stdate = value;
            }
        }
        public string days
        {
            get
            {
                return _days;
            }
            set
            {
                this._days = value;
            }
        }
        public string loc
        {
            get
            {
                return _loc;
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
                return _lm;
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
                return _type;
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
                return _sub;
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
                return _std;
            }
            set
            {
                this._std = value;
            }
        }



    }
}
