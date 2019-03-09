using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tutor_Website
{
    public interface ITutor
    {
        int id { set; get; }
        string name { set; get; }
        string alma { set; get; }
        string loc { set; get; }
        string lm { set; get; }
        string type { set; get; }
        string sub { set; get; }
        string std { set; get; }
        string eid { set; get; }
        string mob { set; get; }
        string pass { set; get; }
        string pin { set; get; }
        string teachingstr1 { set; get; }
        string teachingstr2 { set; get; }
        string teachingstr3 { set; get; }
        char g { set; get; }
        double rating { set; get; }
        double tlat { set; get; }
        double tlong { set; get; }
        double lmlat { set; get; }
        double lmlong { set; get; }
        int fee { set; get; }
        int age { set; get; }
        int exp { set; get; }
        string setteachingstr();

    }
}
