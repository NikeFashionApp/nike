package com.example.nike.Model;

public class Product {
    int productID;
    int productParentID;
    String name;
    String moreInfo;
    String img;
    int price;
    String sizeAndFit;
    String styleCode;
    String colorShown;
    String description;
    String description2;
    Boolean isNewRelease;

    public Boolean getNewRelease() {
        return isNewRelease;
    }

    public void setNewRelease(Boolean newRelease) {
        isNewRelease = newRelease;
    }

    public Product(int productID, int productParentID, String name, String moreInfo, String img, int price, String sizeAndFit, String styleCode, String colorShown, String description, String description2, Boolean isNewRelease) {
        this.productID = productID;
        this.productParentID = productParentID;
        this.name = name;
        this.moreInfo = moreInfo;
        this.img = img;
        this.price = price;
        this.sizeAndFit = sizeAndFit;
        this.styleCode = styleCode;
        this.colorShown = colorShown;
        this.description = description;
        this.description2 = description2;
        this.isNewRelease = isNewRelease;
    }

    public Product(){

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getProductParentID() {
        return productParentID;
    }

    public void setProductParentID(int productParentID) {
        this.productParentID = productParentID;
    }

    public String getMoreInfo() {
        return moreInfo;
    }

    public void setMoreInfo(String moreInfo) {
        this.moreInfo = moreInfo;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getSizeAndFit() {
        return sizeAndFit;
    }

    public void setSizeAndFit(String sizeAndFit) {
        this.sizeAndFit = sizeAndFit;
    }

    public String getStyleCode() {
        return styleCode;
    }

    public void setStyleCode(String styleCode) {
        this.styleCode = styleCode;
    }

    public String getColorShown() {
        return colorShown;
    }

    public void setColorShown(String colorShown) {
        this.colorShown = colorShown;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription2() {
        return description2;
    }

    public void setDescription2(String description2) {
        this.description2 = description2;
    }
}
