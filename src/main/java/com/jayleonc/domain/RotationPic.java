package com.jayleonc.domain;

public class RotationPic {
    private Integer rotationId;
    private String rotationPicUrl;
    private String rotationType;

    public RotationPic() {
    }

    public Integer getRotationId() {
        return this.rotationId;
    }

    public void setRotationId(Integer rotationId) {
        this.rotationId = rotationId;
    }

    public String getRotationPicUrl() {
        return this.rotationPicUrl;
    }

    public void setRotationPicUrl(String rotationPicUrl) {
        this.rotationPicUrl = rotationPicUrl;
    }

    public String getRotationType() {
        return this.rotationType;
    }

    public void setRotationType(String rotationType) {
        this.rotationType = rotationType;
    }
}
