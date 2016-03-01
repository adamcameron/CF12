component {

    public function canSerialize(type){
        return true;
    }

    public function canDeserialize(){
        return true;
    }

    public function serialize(value){
        return "SERIALISED: #value.toJson(false,false)#";
    }

    public function deserialize(){
        //logArgs(args=arguments, from=getFunctionCalledName());
        return "DESERIALISED";
    }

    private function logArgs(required struct args, required string from){
        var dumpFile = getDirectoryFromPath(getCurrentTemplatePath()) & "dump_#from#.html";
        if (fileExists(dumpFile)){
            fileDelete(dumpFile);
        }
        writeDump(var=args, label=from, output=dumpFile, format="text");
    }
}