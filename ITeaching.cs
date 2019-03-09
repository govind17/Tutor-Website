using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tutor_Website
{
    public interface ITeachingSes
    {
        int stuid { set; get; }
        int tid { set; get; }
        string tuname { set; get; }
        string stname { set; get; }
        string status { set; get; }
        char stg { set; get; }
        int stuage { set; get; }
        string time { set; get; }
        string stdate { set; get; }
        string days { set; get; }
        string loc { set; get; }
        string lm { set; get; }
        string type { set; get; }
        string sub { set; get; }
        string std { set; get; }
    }
}
