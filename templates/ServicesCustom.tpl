import System
import System.Reflection

namespace <NAMESPACE>

    public partial class Services extends MarshalByRefObject
	
        public method Services
            required in binPath, String
            endparams
        proc
            ;;Set the DAT: encironment variable so we can find our files
            data dataPath, String, string.Format("{0}\..\..\data",System.IO.Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location))
            data status, i4
            xcall setlog("DAT",dataPath,status)
			
            ;;Ensure that any xfServer connections are locked to the current thread
            try
            begin
                xcall s_server_thread_init
            end
            catch (ex)
            begin
                nop
            end
            endtry
			

        endmethod

    endclass

endnamespace
