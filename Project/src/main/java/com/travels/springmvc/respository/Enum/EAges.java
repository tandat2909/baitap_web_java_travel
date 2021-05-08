package com.travels.springmvc.respository.Enum;

public enum EAges {
    NGUOILON("f53d20c2-7f20-4fad-bab6-76847d102ef9"),
    TREEM("c71fb358-c195-4bc4-9e45-004fd8a5ffd2"),
    TRENHO("bdee5279-4601-484c-8fce-e8f5781deda3"),
    EMBE("31c75b0d-ec1c-4c39-9caf-5f2e90e7f492");

    private String s;

    EAges(String s) {
       this.s = s;
    }
    public static String getId(EAges eAges) {
        for(EAges age : EAges.values()){
            if(eAges.equals(eAges)){
                return eAges.s;
            }
        }
        return "";
    }
}
