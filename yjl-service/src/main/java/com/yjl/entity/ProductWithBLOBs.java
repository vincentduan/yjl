package com.yjl.entity;

public class ProductWithBLOBs extends Product {
    private byte[] brief;

    private byte[] pic;

    public byte[] getBrief() {
        return brief;
    }

    public void setBrief(byte[] brief) {
        this.brief = brief;
    }

    public byte[] getPic() {
        return pic;
    }

    public void setPic(byte[] pic) {
        this.pic = pic;
    }
}