package com.travels.springmvc.respository.Enum;

public enum EAges {
    NGUOILON("f53d20c2-7f20-4fad-bab6-76847d102ef9", new int[]{12, 100}),
    TREEM("c71fb358-c195-4bc4-9e45-004fd8a5ffd2", new int[]{5, 12}),
    TRENHO("bdee5279-4601-484c-8fce-e8f5781deda3", new int[]{2, 5}),
    EMBE("31c75b0d-ec1c-4c39-9caf-5f2e90e7f492", new int[]{0, 2});

    private String id;
    private int[] ageValid;

    EAges(String s, int[] i) {
        this.id = s;
        ageValid = i;
    }

    public static String getId(EAges eAges) {

        return eAges.id;
    }

    public static int[] getAgeVaild(EAges eAges) {
        return eAges.ageValid;
    }

    public static int[] getAgeVaildById(String id) {
        for (EAges age : EAges.values()) {
            if (age.id.equals(id)) {
                return age.ageValid;
            }
        }
        return null;
    }
}
